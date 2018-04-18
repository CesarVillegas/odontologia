# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Admision, Contacto, Contenido, Docentes
from .forms import FormularioContacto
from datetime import datetime
from django.http import JsonResponse
from django.http import HttpResponse
import json


# Create your views here.
def index(request):
    return render(request, 'carrera/index.html')

def admision(request):
    admisiones = Admision.objects.all().last()
    return render(request, 'carrera/admision.html', {'admisiones': admisiones})

def contacto(request):
    if request.method == 'POST':
        form = FormularioContacto(request.POST)
        if form.is_valid():
            nuevo_contacto = Contacto.objects.create(
                nombres=form.cleaned_data.get('nombres'),
                apellidos=form.cleaned_data.get('apellidos'),
                email=form.cleaned_data.get('email'),
                celular=form.cleaned_data.get('celular'),
                mensaje=form.cleaned_data.get('mensaje'),
                contacto_destino=form.cleaned_data.get('contacto_destino'),
                fecha_contacto=datetime.now()
            )
        nuevo_contacto.save()
        respuesta = 'Se ha recibido correctamente su información.'
        form = FormularioContacto()
        return render(request, 'carrera/contacto.html', {'form': form, 'respuesta': respuesta})
    else:
        respuesta = 'Todos los campos del formulario son requeridos.'
        form = FormularioContacto()
        return render(request, 'carrera/contacto.html', {'form': form, 'respuesta': respuesta})

def perfile(request):
    perfil = Contenido.objects.get(seccion='perfil egresado')
    return render(request, 'carrera/contenido.html', {'contenido':perfil})

def perfilp(request):
    perfil = Contenido.objects.get(seccion='perfil profesional')
    return render(request, 'carrera/contenido.html', {'contenido':perfil})

def mision(request):
    mision = Contenido.objects.get(seccion='objetivos')
    return render(request, 'carrera/contenido.html', {'contenido':mision})

def plan(request):
    plan = Contenido.objects.get(seccion='plan')
    return render(request, 'carrera/contenido.html', {'contenido':plan})

def organigrama(request):
    organigrama = Contenido.objects.get(seccion='organigrama')
    return render(request, 'carrera/contenido.html', {'contenido':organigrama})

def docentes(request):
    docentes = Docentes.objects.all().filter(area='docente')
    endodoncias = Docentes.objects.all().filter(area='endodoncia')
    odontopediatrias = Docentes.objects.all().filter(area='odontopediatria')
    return render(request, 'carrera/lista_docentes.html', {'docentes': docentes, 'endodoncias':endodoncias, 'odontopediatrias':odontopediatrias})

def handler404(request):
    return render(request, '404.html', status=404)

def handler500(request):
    return render(request, '500.html', status=500)
