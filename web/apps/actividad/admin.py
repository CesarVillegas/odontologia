# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import  Actividad


class ActividadAdmin(admin.ModelAdmin):
    list_display = ('image_preview', 'titulo', 'inicio', 'cierre', 'mostrar')


admin.site.register(Actividad, ActividadAdmin)
