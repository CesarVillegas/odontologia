# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Contenido

class ContenidoAdmin(admin.ModelAdmin):
  list_display = (['seccion'])

admin.site.register(Contenido, ContenidoAdmin)