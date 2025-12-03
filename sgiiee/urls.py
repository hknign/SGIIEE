from django.urls import path
from . import views

app_name = 'sgiiee'
app_name = "SGIIEE"
app_name = "app"
app_name = "principal"

urlpatterns = [
    path('', views.listar_eventos, name='listar_eventos'),
    path('evento/<int:pk>/', views.detalle_evento, name='detalle_evento'),
    path("evento/crear/", views.crear_evento, name="crear_evento"),
    path("carrito/", views.ver_carrito, name="ver_carrito"),

    # API AJAX
    path("api/agregar-asientos/", views.api_agregar_asientos_carrito, name="api_agregar_asientos_carrito"),

    path('evento/<int:pk>/editar/', views.editar_evento, name='editar_evento'),
    path('evento/<int:pk>/eliminar/', views.eliminar_evento, name='eliminar_evento'),

    path("carrito/quitar/<int:item_id>/", views.quitar_del_carrito, name="quitar_del_carrito"),
    path("carrito/pagar/", views.pagar_carrito, name="pagar_carrito"),

    path("categorias/nueva/", views.crear_categoria_ajax, name="crear_categoria_ajax"),
    path('panel_admin/', views.panel_administrador, name='panel_administrador'),
]
