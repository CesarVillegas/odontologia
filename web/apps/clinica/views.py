# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Contenido
# Create your views here.

def index(request):
    return render(request, 'clinica/index.html')

def organigrama(request):
    organigrama = Contenido.objects.get(seccion='Organigrama')
    return render(request, 'clinica/contenido.html', {'contenido':organigrama})

def mision(request):
    mision = Contenido.objects.get(seccion='Misión')
    return render(request, 'clinica/contenido.html', {'contenido':mision})

def equipo(request):
    return render(request, 'clinica/equipo.html')

def catedra(request):
    return render(request, 'clinica/catedra.html')

def paciente(request):
    paciente = Contenido.objects.get(seccion='Paciente')
    return render(request, 'clinica/contenido.html', {'contenido':paciente})


def handler404(request):
    return render(request, '404.html', status=404)


def handler500(request):
    return render(request, '500.html', status=500)
