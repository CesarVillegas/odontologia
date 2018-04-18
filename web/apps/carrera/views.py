# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from .models import Admision, Contactos, Contenido, Docentes
from .forms import FormularioContactos
from datetime import datetime
from django.http import JsonResponse
from django.http import HttpResponse
import json
import twitter


def gettweets():
    api = twitter.Api(consumer_key='H3hIMnLyS4ooJV10N3qTNskvb',
                      consumer_secret='wwyz0stSlIvxvgBwrRl4sJN0TGQSbZcN3dSuXlSOuZzAqyFmyX',
                      access_token_key='3153752663-miwwTH2UtGCwIJd9e7mTD3u9a2bji0yznWPKJBp',
                      access_token_secret='vuhc27ZGZ3VzBENNsi3g4KQA2Ob4BueDFOzrXmsabuQ5U')
    return api.GetUserTimeline(screen_name='CampusDULS', exclude_replies=True, include_rts=False)


@csrf_exempt
def timeline(request):
    if request.method == 'GET':
        cantidad = request.GET.get('num')
        json_data = {}
        contador = 0
        tweets = gettweets()
        for tweet in tweets:
            temp = {
                "created_at": tweet.created_at,
                "source": tweet.source,
                "text": tweet.text,
            }
            json_data['tweet'+str(contador)] = temp
            contador += 1
        return HttpResponse(json.dumps(json_data), content_type="application/json")
    return render(request)

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
        return HttpResponse("<h5>Se ha recibido correctamente su información.</h5>")
    else:
        form = FormularioContactos()
        return render(request, 'carrera/contacto.html', {'form': form})

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
