# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import Admision, Contenido, Docentes, Contacto


# Register your models here.
class admisionAdmin(admin.ModelAdmin):
    list_display = ('anio','puntaje_minimo','puntaje_maximo','puntaje_ponderado', 'vacantes')

class ContenidoAdmin(admin.ModelAdmin):
    list_display = (['seccion'])

class DocenteAdmin(admin.ModelAdmin):
    list_display = ('nombre_completo', 'image_foto', 'cargo')

class ContactoAdmin(admin.ModelAdmin):
    list_display = ('nombres', 'apellidos', 'email', 'celular', 'contacto_destino')


admin.site.register(Admision, admisionAdmin)
admin.site.register(Docentes, DocenteAdmin)
admin.site.register(Contenido, ContenidoAdmin)
admin.site.register(Contacto, ContactoAdmin)