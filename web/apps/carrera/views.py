# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Admision, Contacto, Contenido, Docentes
from .forms import FormularioContacto
from datetime import datetime
from django.http import JsonResponse
from django.http import HttpResponse
import json
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.header import Header
from email.utils import formataddr
from email.utils import formatdate
from email.utils import make_msgid
import time
import smtplib
from django.conf import settings
from django.core.exceptions import ObjectDoesNotExist

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
        if(enviarcorreo(nuevo_contacto)):
            respuesta = '<div class="alert alert-success">Se ha recibido correctamente su información.</div>'
            form = FormularioContacto()
        else:
            respuesta = 'Error en enviar su información.'
        return render(request, 'carrera/contacto.html', {'form': form, 'respuesta': respuesta})
    else:
        respuesta = 'Todos los campos del formulario son requeridos.'
        form = FormularioContacto()
        return render(request, 'carrera/contacto.html', {'form': form, 'respuesta': respuesta})

def enviarcorreo(contacto):
    try:
        template = """<h3>Nueva Consulta</h3><br/>
        <ul>
            <li><strong>Para:</strong> """+str(contacto.contacto_destino)+"""</li>
            <li><strong>Nombres:</strong> """+contacto.nombres.encode('utf8')+"""</li>
            <li><strong>Apellidos:</strong> """+contacto.apellidos.encode('utf8')+"""</li>
            <li><strong>Email:</strong> """+contacto.email.encode('utf8')+"""</li>
            <li><strong>Celular:</strong> """+str(contacto.celular)+"""</li>
            <li><strong>Mensaje:</strong> """+contacto.mensaje.encode('utf8')+"""</li>
        </ul>   
        """

        fromaddr = "info@userena.digital"
        toaddr  = "dortiz@userena.cl"

        msg = MIMEMultipart('alternative')
        msg['From'] = formataddr((str(Header('Website Odontologia', 'utf-8')), fromaddr))
        msg['To'] = toaddr
        msg['Subject'] = "Nuevo Contacto - "+contacto.contacto_destino.encode('utf8')+" "+str(contacto.fecha_contacto.strftime("%d-%m-%Y %H:%M:%S"))
        msg['Date'] = formatdate(time.time(), localtime=True)
        msg.add_header('Message-id', make_msgid())
        msg.attach(MIMEText(template, 'html'))

             
        server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
        server.ehlo()
        server.starttls()
        server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
        server.sendmail(fromaddr, toaddr, msg.as_string())
        server.close()
    except Exception as e:
        print '%s (%s)' % (e.message, type(e))
        return False
    return True

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

def detalle_academico(request):
    try:
        id = request.GET['detalle']
        datos = Docentes.objects.get(id=id)
        return render(request, 'carrera/detalle_academico.html', {'datos': datos})
    except ObjectDoesNotExist:
        return render(request, '404.html', status=404)

    #if 'detalle' in request.GET:
    #    id = request.GET['detalle']
    #    datos = Docentes.objects.get(id=id)
    #    return render(request, 'carrera/detalle_academico.html', {'datos': datos})
    #else:
    #    return HttpResponse('<h1>Pagina no encontrada</h1>')

def handler404(request):
    return render(request, '404.html', status=404)

def handler500(request):
    return render(request, '500.html', status=500)
