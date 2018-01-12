# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import Admision

# Register your models here.
class admisionAdmin(admin.ModelAdmin):
    list_display = ('anio','puntaje_minimo','puntaje_maximo','puntaje_ponderado', 'vacantes')

admin.site.register(Admision, admisionAdmin)
