from django.db import models
from django.contrib.auth import get_user_model
from decimal import Decimal

Usuario = get_user_model()

class Categoria(models.Model):
    nombre = models.CharField(max_length=120)

    def __str__(self):
        return self.nombre


class Evento(models.Model):
    FORMAS = [
        ("triangulo","Triángulo"),
        ("cuadrado","Cuadrado"),
        ("rectangulo","Rectángulo"),
        ("circulo","Circulo"),
        ("hexagono","Hexágono"),
        ("octagono","Octágono"),
    ]

    nombre = models.CharField(max_length=250)
    descripcion = models.TextField(blank=True)

    fecha = models.DateField()
    hora = models.TimeField()

    lugar = models.CharField(max_length=250)
    capacidad = models.PositiveIntegerField()
    forma_recinto = models.CharField(max_length=20, choices=FORMAS, default="cuadrado")

    categoria = models.ForeignKey("Categoria", null=True, blank=True, on_delete=models.SET_NULL)
    imagen = models.ImageField(upload_to='eventos/', null=True, blank=True)

    precio_vip = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal("300.00"))
    precio_avanzado = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal("180.00"))
    precio_normal = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal("100.00"))

    def __str__(self):
        return self.nombre


class Asiento(models.Model):
    ESTADOS = [
        ('disponible','Disponible'),
        ('apartado','Apartado'),
        ('vendido','Vendido'),
    ]
    evento = models.ForeignKey(Evento, on_delete=models.CASCADE)
    fila = models.CharField(max_length=5)
    numero = models.PositiveIntegerField()
    estado = models.CharField(max_length=15, choices=ESTADOS, default='disponible')
    pos_x = models.FloatField(default=0)  
    pos_y = models.FloatField(default=0)
    zona = models.CharField(max_length=20, default='normal')  # normal, avanzado, vip
    precio = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))

    class Meta:
        unique_together = ('evento','fila','numero')
        ordering = ['fila','numero']

    def codigo(self):
        return f"{self.fila}{self.numero}"

    def __str__(self):
        return f"{self.codigo()} - {self.estado} - {self.zona}"

from django.db import models
from sgiiee.models import Usuario, Asiento

class ItemCarrito(models.Model):
    usuario = models.ForeignKey(
        Usuario,
        null=True,
        blank=True,
        on_delete=models.CASCADE,
        related_name="items_carrito"
    )
    asiento = models.ForeignKey(
        Asiento,
        on_delete=models.CASCADE,
        related_name="items_carrito"
    )
    agregado_en = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Asiento {self.asiento.fila}{self.asiento.numero} - {self.usuario or 'anónimo'}"

    class Meta:
        verbose_name = "Item de Carrito"
        verbose_name_plural = "Items de Carrito"
        ordering = ["-agregado_en"]