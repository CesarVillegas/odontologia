# -*- coding: utf-8 -*-
from django.shortcuts import render
from ..documentos.models import Documento
from .models import Productividad
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def index(request):
    docs = Documento.objects.filter(mostrar=True, tipo_documento='I').order_by('titulo').order_by('prioridad')
    paginator = Paginator(docs, 6)
    page = request.GET.get('page')
    try:
        documentos = paginator.page(page)
    except PageNotAnInteger:
        documentos = paginator.page(1)
    except EmptyPage:
        documentos = paginator.page(paginator.num_pages)
    return render(request, 'investigacion/index.html',{'documentos':documentos})

def documentos_politica(request):
    docs = Documento.objects.filter(mostrar=True, tipo_documento='I').order_by('titulo').order_by('prioridad')
    paginator = Paginator(docs, 6)
    page = request.GET.get('page')
    try:
        documentos = paginator.page(page)
    except PageNotAnInteger:
        documentos = paginator.page(1)
    except EmptyPage:
        documentos = paginator.page(paginator.num_pages)
    return render(request, 'investigacion/documentos.html',{'documentos':documentos})

def cienciometria(request):
    actividades = Productividad.objects.filter().order_by('temporada').reverse()
    return render(request, 'investigacion/cienciometria.html',{'actividades':actividades})
