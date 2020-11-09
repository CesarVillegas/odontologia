# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from .models import Contenido, TipoServicio, Servicio, Equipo, Galeria, Imagen

class ContenidoAdmin(admin.ModelAdmin):
    list_display = (['seccion'])

class ServicioAdmin(admin.ModelAdmin):
    list_display = ('nombre','tipo_servicio')

class TipoServicioAdmin(admin.ModelAdmin):
    list_display = ('nombre','image_foto')

class EquipoAdmin(admin.ModelAdmin):
    list_display = ('nombre_completo', 'image_foto', 'cargo')

class ImagenAdmin(admin.ModelAdmin):
    list_display = ('image_img', 'galeria')

admin.site.register(Contenido, ContenidoAdmin)
admin.site.register(Servicio, ServicioAdmin)
admin.site.register(Equipo, EquipoAdmin)
admin.site.register(Galeria)
admin.site.register(Imagen, ImagenAdmin)
admin.site.register(TipoServicio, TipoServicioAdmin)
