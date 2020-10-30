# -*- coding: utf-8 -*-
from django.shortcuts import render
from .models import Documento
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def documentos(request):
    docs = Documento.objects.filter(mostrar=True, tipo_documento='G').order_by('titulo').order_by('prioridad')
    paginator = Paginator(docs, 6)
    page = request.GET.get('page')
    try:
        documentos = paginator.page(page)
    except PageNotAnInteger:
        documentos = paginator.page(1)
    except EmptyPage:
        documentos = paginator.page(paginator.num_pages)
    return render(request, 'documentos/docs.html',{'documentos':documentos})
