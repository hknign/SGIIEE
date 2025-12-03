import json
import re
from decimal import Decimal

from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.admin.views.decorators import staff_member_required
from django.views.decorators.http import require_POST
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from django.db import transaction
from django.contrib import messages

from .models import Evento, Asiento, Categoria
from .forms import FormularioEvento
from .utils.generar_asientos import generar_asientos, generar_escenario


# ---------------------------------------------------------
# LISTADO DE EVENTOS
# ---------------------------------------------------------
def listar_eventos(request):
    q = request.GET.get("q", "")
    eventos = Evento.objects.all()
    if q:
        eventos = eventos.filter(nombre__icontains=q)
    return render(request, "sgiiee/listar_eventos.html", {"eventos": eventos})


# ---------------------------------------------------------
# CREAR EVENTO (ADMIN)
# ---------------------------------------------------------
@staff_member_required
def crear_evento(request):
    if request.method == "POST":
        form = FormularioEvento(request.POST, request.FILES)
        if form.is_valid():
            evento = form.save()

  
            generar_asientos(evento)

            messages.success(request, "Evento creado con sus asientos correctamente generados.")
            return redirect("sgiiee:detalle_evento", pk=evento.pk)

        messages.error(request, "El formulario contiene errores.")
    else:
        form = FormularioEvento()

    return render(request, "sgiiee/formulario_evento.html", {"form": form})


# ---------------------------------------------------------
# DETALLE DEL EVENTO
# ---------------------------------------------------------
def detalle_evento(request, pk):
    evento = get_object_or_404(Evento, pk=pk)


    asientos = Asiento.objects.filter(evento=evento).order_by("fila", "numero")


    escenario = generar_escenario(evento.forma_recinto.lower())

    context = {
        "evento": evento,
        "asientos": asientos,
        "escenario": escenario,
    }

    return render(request, "sgiiee/detalle_evento.html", context)

# ---------------------------------------------------------
# AÑADIR ASIENTOS AL CARRITO (AJAX)
# ---------------------------------------------------------
@require_POST
def api_agregar_asientos_carrito(request):
    try:
        if request.content_type == "application/json":
            data = json.loads(request.body.decode("utf-8"))
            ids = data.get("asientos", [])
        else:
            raw = request.POST.get("asientos", "")
            if "," in raw:
                ids = [s.strip() for s in raw.split(",")]
            else:
                ids = request.POST.getlist("asientos") or ([raw] if raw else [])
    except Exception:
        return JsonResponse({"ok": False, "error": "JSON inválido"}, status=400)

    if not ids:
        return JsonResponse({"ok": False, "error": "No se recibieron asientos"}, status=400)

    añadidos = []
    errores = []

    with transaction.atomic():
        for sid in ids:
            try:
                s_int = int(sid)
                asiento = Asiento.objects.select_for_update().get(pk=s_int)
            except Exception:
                errores.append({"id": sid, "error": "Asiento inexistente"})
                continue

            if asiento.estado != "disponible":
                errores.append({"id": sid, "error": "No disponible"})
                continue

            # Marcar asiento como apartado
            asiento.estado = "apartado"
            asiento.save()

            # Actualizar carrito en sesión (clave uniforme: "carrito")
            carrito = request.session.get("carrito", [])
            if asiento.id not in carrito:
                carrito.append(asiento.id)
                request.session["carrito"] = carrito

            añadidos.append({
                "id": asiento.id,
                "codigo": asiento.fila + str(asiento.numero),
                "precio": str(asiento.precio)
            })

    if añadidos:
        return JsonResponse({
            "ok": True,
            "añadidos": añadidos,
            "errores": errores,
            "mensaje": f"{len(añadidos)} asiento(s) agregados"
        })

    return JsonResponse({"ok": False, "errores": errores}, status=400)


# ---------------------------------------------------------
# VER CARRITO ÚNICO
# ---------------------------------------------------------
from collections import defaultdict
from collections import defaultdict
from decimal import Decimal

def ver_carrito(request):
    ids = request.session.get("carrito", [])
    asientos = Asiento.objects.filter(id__in=ids).select_related("evento").order_by("evento__id", "fila", "numero")

    # Agrupar por evento
    eventos = defaultdict(list)
    for a in asientos:
        eventos[a.evento].append(a)

    bloques = []
    total_global = Decimal("0.00")

    for evento, lista in eventos.items():
        subtotal = sum((a.precio or Decimal("0.00")) for a in lista)
        cantidad = len(lista)
        bloques.append({
            "evento": evento,
            "asientos": lista,
            "total": subtotal,
            "cantidad": cantidad,
        })
        total_global += subtotal

    return render(request, "sgiiee/carrito.html", {
        "bloques": bloques,
        "total_global": total_global
    })
# ---------------------------------------------------------
# EDITAR EVENTO
# ---------------------------------------------------------
@staff_member_required
def editar_evento(request, pk):
    evento = get_object_or_404(Evento, pk=pk)

    if request.method == "POST":
        form = FormularioEvento(request.POST, request.FILES, instance=evento)
        if form.is_valid():
            form.save()
            messages.success(request, "Evento actualizado.")
            return redirect("sgiiee:detalle_evento", pk=evento.pk)

    else:
        form = FormularioEvento(instance=evento)

    return render(request, "sgiiee/formulario_evento.html", {
        "form": form,
        "evento": evento
    })

# ---------------------------------------------------------
# QUITAR ASIENTO DEL CARRITO
# ---------------------------------------------------------
def quitar_del_carrito(request, item_id):
    carrito = request.session.get("carrito", [])

    try:
        s_int = int(item_id)
        if s_int in carrito:
            carrito.remove(s_int)
            request.session["carrito"] = carrito

            # liberar asiento
            with transaction.atomic():
                asiento = Asiento.objects.select_for_update().get(pk=s_int)
                asiento.estado = "disponible"
                asiento.save()
    except Exception:
        pass  

    return redirect("sgiiee:ver_carrito")
from django.shortcuts import render

# ---------------------------------------------------------
# PAGAR CARRITO (PLANO)
# ---------------------------------------------------------
def pagar_carrito(request):
    ids = request.session.get("carrito", [])
    asientos = Asiento.objects.filter(id__in=ids).order_by("fila", "numero")
    total = sum((a.precio or Decimal("0.00")) for a in asientos)

   
    request.session["carrito"] = []

    return render(request, "sgiiee/pagar.html", {
        "asientos": asientos,
        "total": total,
        "mensaje": "Gracias por tu compra. Tus asientos han sido confirmados."
    })
# ---------------------------------------------------------
# ELIMINAR EVENTO
# ---------------------------------------------------------
@staff_member_required
def eliminar_evento(request, pk):
    evento = get_object_or_404(Evento, pk=pk)

    if request.method == "POST":
        evento.delete()
        messages.success(request, "Evento eliminado.")
        return redirect("sgiiee:listar_eventos")

    return render(request, "sgiiee/confirmar_eliminacion.html", {
        "evento": evento
    })


# ---------------------------------------------------------
# PANEL ADMINISTRADOR
# ---------------------------------------------------------
@staff_member_required
def panel_administrador(request):
    eventos = Evento.objects.all()
    total_asientos = Asiento.objects.count()
    disponibles = Asiento.objects.filter(estado="disponible").count()

    return render(request, "sgiiee/panel_administrador.html", {
        "eventos": eventos,
        "total_asientos": total_asientos,
        "asientos_disponibles": disponibles
    })

@require_POST
@csrf_exempt  
def crear_categoria_ajax(request):
    nombre = (request.POST.get("nombre") or "").strip()

    # Validaciones
    if not nombre:
        return JsonResponse({"ok": False, "error": "Debes ingresar un nombre"}, status=400)
    if len(nombre) < 3:
        return JsonResponse({"ok": False, "error": "El nombre debe tener al menos 3 caracteres"}, status=400)
    if not re.match(r"^[A-Za-zÀ-ÿ0-9 ]+$", nombre):
        return JsonResponse({"ok": False, "error": "Solo se permiten letras, números y espacios"}, status=400)
    if Categoria.objects.filter(nombre__iexact=nombre).exists():
        return JsonResponse({"ok": False, "error": "La categoría ya existe"}, status=400)

    cat = Categoria.objects.create(nombre=nombre)
    return JsonResponse({"ok": True, "id": cat.id, "nombre": cat.nombre})