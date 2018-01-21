# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Admision, Contactos, Contenido
from .forms import FormularioContactos
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
                mensaje=form.cleaned_data.get('mensaje')
            )
        nuevo_contacto.save()
            #cd = form.cleaned_data
            #return render(request, 'carrera/index.html')
        return HttpResponse("<h1>OK</h1>")
    else:
        form = FormularioContactos()
        return render(request, 'carrera/contacto.html', {'form': form})


def contacto2(request):
    if request.method == 'POST':
        form = FormularioContactos(request.POST)
        if form.is_valid():
            nueva = Contactos.objects.create(
                rut=form.cleaned_data.get('rut'),
                nombres=form.cleaned_data.get('nombres'),
                apellido_paterno=form.cleaned_data.get('apellido_paterno'),
                email=form.cleaned_data.get('email'),
                celular=form.cleaned_data.get('celular'),
                mensaje=form.cleaned_data.get('mensaje')
            )
            nueva.save()
            return HttpResponse(json.dumps({"estado": "saved"}), content_type="application/json")
        else:
            return HttpResponse(
                json.dumps({"estado": "forminvalid"}),
                content_type="application/json"
            )
    else:
        return HttpResponse(
            json.dumps({"estado": "notpost"}),
            content_type="application/json"
        )


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

def docentes(request):
    return render(request, 'carrera/lista_docentes.html')