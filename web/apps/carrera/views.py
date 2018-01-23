# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Admision, Contactos, Contenido, Docentes
from .forms import FormularioContactos
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
        form = FormularioContactos(request.POST)
        if form.is_valid():
            nuevo_contacto = Contactos.objects.create(
                nombres=form.cleaned_data.get('nombres'),
                apellidos=form.cleaned_data.get('apellidos'),
                email=form.cleaned_data.get('email'),
                celular=form.cleaned_data.get('celular'),
                mensaje=form.cleaned_data.get('mensaje'),
                fecha_contacto=datetime.now()
            )
        nuevo_contacto.save()
            #cd = form.cleaned_data
            #return render(request, 'carrera/index.html')
        return HttpResponse("<h5>Se ha recibido correctamente su información.</h5>")
    else:
        form = FormularioContactos()
        return render(request, 'carrera/contacto.html', {'form': form})


def perfil(request):
    perfil = Contenido.objects.get(seccion='perfil')
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

#def docentes(request):
#    return render(request, 'carrera/lista_docentes.html')

def docentes(request):
    docentes = Docentes.objects.all().filter(area='docente')
    endodoncias = Docentes.objects.all().filter(area='endodoncia')
    odontopediatrias = Docentes.objects.all().filter(area='odontopediatria')
    return render(request, 'carrera/lista_docentes.html', {'docentes': docentes, 'endodoncias':endodoncias, 'odontopediatrias':odontopediatrias})
    #return render(request, 'clinica/equipo.html', {'directores':directores, 'enfermeras':enfermeras, 'tecnicos':tecnicos, 'secretarias':secretarias, 'auxiliares':auxiliares})
