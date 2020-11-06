# -*- coding: utf-8 -*-
from django.shortcuts import render
from .models import Documento


def documentos(request):
    docs = Documento.objects.filter(mostrar=True, tipo_documento='G').order_by('titulo').order_by('prioridad')
    return render(request, 'documentos/docs.html',{'documentos':docs})
