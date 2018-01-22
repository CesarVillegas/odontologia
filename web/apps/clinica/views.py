# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Contenido, Servicio, Equipo, Galeria, Imagen
# Create your views here.

def index(request):
    return render(request, 'clinica/index.html')

def organigrama(request):
    organigrama = Contenido.objects.get(seccion='Organigrama')
    return render(request, 'clinica/contenido.html', {'contenido':organigrama})

def servicios_imagenologia(request):
    servicios = Servicio.objects.all().filter(tipo_servicio='imagenologia')
    return render(request, 'clinica/servicios.html', {'servicios':servicios, 'tipo':'Imagenología'})

def servicios_odontologia(request):
    servicios = Servicio.objects.all().filter(tipo_servicio='odontologia')
    return render(request, 'clinica/servicios.html', {'servicios':servicios, 'tipo':'Odontología'})

def equipo(request):
    directores = Equipo.objects.all().filter(cargo='director')
    enfermeras = Equipo.objects.all().filter(cargo='enfermera')
    tecnicos = Equipo.objects.all().filter(cargo='tecnico')
    secretarias = Equipo.objects.all().filter(cargo='secretaria')
    auxiliares = Equipo.objects.all().filter(cargo='auxiliar')
    return render(request, 'clinica/equipo.html', {'directores':directores, 'enfermeras':enfermeras, 'tecnicos':tecnicos, 'secretarias':secretarias, 'auxiliares':auxiliares})

def catedra(request):
    return render(request, 'clinica/catedra.html')

def faq(request):
    faq = Contenido.objects.get(seccion='Preguntas Frecuentes')
    return render(request, 'clinica/contenido.html', {'contenido':faq})

def galeria(request):
    galerias = Galeria.objects.all()
    imagenes = Imagen.objects.all()
    return render(request, 'clinica/galeria.html', {'galerias':galerias, 'imagenes':imagenes})
