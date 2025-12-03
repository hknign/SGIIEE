from django.contrib import admin
from .models import Categoria, Evento, Asiento, ItemCarrito

@admin.register(Categoria)
class CategoriaAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

@admin.register(Evento)
class EventoAdmin(admin.ModelAdmin):
    list_display = ('nombre','fecha','hora','lugar','capacidad','categoria')
    search_fields = ('nombre','lugar')
    list_filter = ('fecha','categoria')

@admin.register(Asiento)
class AsientoAdmin(admin.ModelAdmin):
    list_display = ('evento','fila','numero','estado')
    list_filter = ('evento','estado')

@admin.register(ItemCarrito)
class ItemCarritoAdmin(admin.ModelAdmin):
    list_display = ('asiento','usuario','agregado_en')
