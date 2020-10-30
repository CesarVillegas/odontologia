# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import  Noticia


class NoticiaAdmin(admin.ModelAdmin):
    list_display = ('image_preview', 'titulo', 'inicio', 'cierre', 'mostrar')


admin.site.register(Noticia, NoticiaAdmin)
