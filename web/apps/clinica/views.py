# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render, redirect
from .models import Contenido, TipoServicio, Servicio, Equipo, Galeria, Imagen
# Create your views here.

def index(request):
    return render(request, 'clinica/index.html')

def organigrama(request):
    organigrama = Contenido.objects.get(seccion='Organigrama')
    return render(request, 'clinica/contenido.html', {'contenido':organigrama})

def servicios(request,id_tipo_servicio):
    servicios = Servicio.objects.filter(tipo_servicio__id=id_tipo_servicio)
    if servicios.exists():
        tipo_servicio=TipoServicio.objects.get(id=id_tipo_servicio)
        return render(request, 'clinica/servicios.html', {'servicios':servicios, 'tipo_servicio':tipo_servicio})
    return redirect('/')

def equipo(request):
    directores = Equipo.objects.all().filter(cargo='director')
    administradora_coa = Equipo.objects.all().filter(cargo='admin_coa')
    radiologa = Equipo.objects.all().filter(cargo='radiologa')
    enfermeras = Equipo.objects.all().filter(cargo='enfermera')
    tecnicos = Equipo.objects.all().filter(cargo='tecnico')
    secretarias = Equipo.objects.all().filter(cargo='secretaria')
    auxiliares = Equipo.objects.all().filter(cargo='auxiliar')
    mayordomo = Equipo.objects.all().filter(cargo='mayordomo')
    tec_mantencion = Equipo.objects.all().filter(cargo='tec_mante')
    guardia = Equipo.objects.all().filter(cargo='guardia')
    return render(request, 'clinica/equipo.html', {'directores':directores, 'administradora_coa':administradora_coa, 'radiologa': radiologa, 'enfermeras':enfermeras, 'tecnicos':tecnicos, 'secretarias':secretarias, 'auxiliares':auxiliares, 'mayordomo': mayordomo, 'tec_mantencion': tec_mantencion, 'guardia':guardia})

def catedra(request):
    return render(request, 'clinica/catedra.html')

def faq(request):
    faq = Contenido.objects.get(seccion='Preguntas Frecuentes')
    return render(request, 'clinica/contenido.html', {'contenido':faq})

def galeria(request):
    galerias = Galeria.objects.all()
    imagenes = Imagen.objects.all()
    return render(request, 'clinica/galeria.html', {'galerias':galerias, 'imagenes':imagenes})

def handler404(request):
    return render(request, '404.html', status=404)

def handler500(request):
    return render(request, '500.html', status=500)