# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import  Documento


class DocumentoAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'documento_preview', 'mostrar')


admin.site.register(Documento, DocumentoAdmin)