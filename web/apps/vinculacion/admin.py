# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from apps.carrera.models import ActividadGruposInteres, ActividadCientificoProductivo, ActividadPoliticaPublicaParticipacion, TipoPoliticaPublica, ActividadPoliticaPublica

# Actividades
class GrupoInteresAdmin(admin.ModelAdmin):
    list_display = ('actividad','anio','grupo_interes','mostrar')

class CientificoProductivoAdmin(admin.ModelAdmin):
    list_display = ('actividad','anio','mostrar')

class PoliticaPublicaParticipacionAdmin(admin.ModelAdmin):
    list_display = ('fecha','institucion_externa','objetivo_reunion', 'mostrar')

class TipoPoliticaPublicaAdmin(admin.ModelAdmin):
    list_display = ('id','descripcion')

class PoliticaPublicaAdmin(admin.ModelAdmin):
    list_display = ('actividad','participantes','anio', 'mostrar')


admin.site.register(ActividadGruposInteres, GrupoInteresAdmin)
admin.site.register(ActividadCientificoProductivo, CientificoProductivoAdmin)
admin.site.register(ActividadPoliticaPublicaParticipacion, PoliticaPublicaParticipacionAdmin)
admin.site.register(TipoPoliticaPublica, TipoPoliticaPublicaAdmin)
admin.site.register(ActividadPoliticaPublica, PoliticaPublicaAdmin)
