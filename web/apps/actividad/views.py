# -*- coding: utf-8 -*-
from django.shortcuts import render, redirect
from .models import Actividad
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def actividades(request):
    if 'query' in request.GET:
        query = request.GET['query']
        acts = (Actividad.objects.filter(titulo__icontains=query,mostrar=True) | Actividad.objects.filter(mostrar=True,descripcion__icontains=query)).distinct()
    elif 'anio' in request.GET and 'mes' in request.GET:
        anio = request.GET['anio']
        mes = request.GET['mes']
        acts = Actividad.objects.filter(inicio__year=anio,inicio__month=mes,mostrar=True).order_by('-inicio')
    else:
        acts = Actividad.objects.filter(mostrar=True).order_by('titulo').order_by('-inicio')
    paginator = Paginator(acts, 6)
    page = request.GET.get('page')
    try:
        acts = paginator.page(page)
    except PageNotAnInteger:
        acts = paginator.page(1)
    except EmptyPage:
        acts = paginator.page(paginator.num_pages)
    fechas = Actividad.objects.filter(mostrar=True).dates('inicio','month',order='DESC')
    return render(request, 'actividad/actividades.html',{'actividades':acts, 'fechas':fechas})


def detalle(request, actid):
    if Actividad.objects.filter(pk=actid, mostrar=True).exists():
        act = Actividad.objects.get(pk=actid, mostrar=True)
        return render(request, 'actividad/actividad.html',{'actividad':act})
    else:
        return actividades(request)
