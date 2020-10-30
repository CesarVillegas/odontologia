# -*- coding: utf-8 -*-
from django.http import Http404
from django.shortcuts import render, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import Noticia


def noticias(request):
    if 'query' in request.GET:
        query = request.GET['query']
        nts = (Noticia.objects.filter(titulo__icontains=query,mostrar=True) | Noticia.objects.filter(mostrar=True,descripcion__icontains=query)).distinct()
    elif 'anio' in request.GET and 'mes' in request.GET:
        anio = request.GET['anio']
        mes = request.GET['mes']
        nts = Noticia.objects.filter(inicio__year=anio,inicio__month=mes,mostrar=True).order_by('-inicio')
    else:
        nts = Noticia.objects.filter(mostrar=True).order_by('titulo').order_by('-inicio')
    paginator = Paginator(nts, 6)
    page = request.GET.get('page')
    try:
        nts = paginator.page(page)
    except PageNotAnInteger:
        nts = paginator.page(1)
    except EmptyPage:
        nts = paginator.page(paginator.num_pages)
    fechas = Noticia.objects.filter(mostrar=True).dates('inicio','month',order='DESC')
    return render(request, 'noticia/noticias.html',{'noticias':nts, 'fechas':fechas})


def detalle(request, actid):
    if Noticia.objects.filter(pk=actid, mostrar=True).exists():
        nt = Noticia.objects.get(pk=actid, mostrar=True)
        fechas = Noticia.objects.filter(mostrar=True).dates('inicio','month',order='DESC')
        return render(request, 'noticia/noticia.html',{'noticia':nt, 'fechas':fechas})
    else:
        #return noticias(request)
        raise Http404
