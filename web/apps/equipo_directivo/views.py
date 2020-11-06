# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from .models import Directivo

# Create your views here.
def equipo_directivo(request):
    direccion = Directivo.objects.all().filter(tipo_cargo='D')
    administracion = Directivo.objects.all().filter(tipo_cargo='A')
    coordinacion = Directivo.objects.all().filter(tipo_cargo='C')
    return render(request, 'equipo_directivo/equipo.html', {'directores': direccion, 'administradores':administracion, 'coordinadores': coordinacion})
