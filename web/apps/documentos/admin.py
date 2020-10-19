# -*- coding: utf-8 -*-
from django.contrib import admin
from .models import  Documento
from .forms import DocumentoModelForm


class DocumentoAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'documento_preview', 'mostrar')
    form = DocumentoModelForm


admin.site.register(Documento, DocumentoAdmin)