# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Contenido, Servicio

class ContenidoAdmin(admin.ModelAdmin):
  list_display = (['seccion'])

class ServicioAdmin(admin.ModelAdmin):
  list_display = ('nombre','tipo_servicio','valor')

admin.site.register(Contenido, ContenidoAdmin)
admin.site.register(Servicio, ServicioAdmin)