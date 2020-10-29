# -*- coding: utf-8 -*-
from django.shortcuts import render, redirect
from .models import Actividad
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def actividades(request):
    acts = Actividad.objects.filter(mostrar=True).order_by('titulo').order_by('-inicio')
    paginator = Paginator(acts, 6)
    page = request.GET.get('page')
    try:
        acts = paginator.page(page)
    except PageNotAnInteger:
        acts = paginator.page(1)
    except EmptyPage:
        acts = paginator.page(paginator.num_pages)
    return render(request, 'actividad/actividades.html',{'actividades':acts})


def detalle(request, actid):
    if Actividad.objects.filter(pk=actid, mostrar=True).exists():
        act = Actividad.objects.get(pk=actid, mostrar=True)
        return render(request, 'actividad/actividad.html',{'actividad':act})
    else:
        return actividades(request)
