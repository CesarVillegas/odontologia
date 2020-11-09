# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from .models import Productividad

class ProductividadAdmin(admin.ModelAdmin):
    list_display = ('temporada', 'produccion_investigacion', 'produccion_educacional')

admin.site.register(Productividad, ProductividadAdmin)
