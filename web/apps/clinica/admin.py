# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Contenido, Servicio, Equipo

class ContenidoAdmin(admin.ModelAdmin):
  list_display = (['seccion'])

class ServicioAdmin(admin.ModelAdmin):
  list_display = ('nombre','tipo_servicio','valor')

class EquipoAdmin(admin.ModelAdmin):
  list_display = ('nombre_completo', 'image_foto', 'cargo')

admin.site.register(Contenido, ContenidoAdmin)
admin.site.register(Servicio, ServicioAdmin)
admin.site.register(Equipo, EquipoAdmin)