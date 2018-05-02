# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from django.http import JsonResponse
from django.http import HttpResponse
from django.conf import settings
from django.core.exceptions import ObjectDoesNotExist
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.header import Header
from email.utils import formataddr
from email.utils import formatdate
from email.utils import make_msgid
from datetime import datetime
from .models import Admision, Contacto, Contenido, Docentes
from .forms import FormularioContacto
import time
import smtplib
import json
import twitter
import requests


def getinstagram():
    BASE_URL='https://api.instagram.com/v1/'
    APP_ACCESS_TOKEN='7601766579.15c4221.f5ccc92f3f4446f1ab2e2ca0de4b0eb6'
    request_url = (BASE_URL + 'users/self/media/recent/?access_token=%s&count=8') % (APP_ACCESS_TOKEN)
    recent_post = requests.get(request_url).json()
    posts = recent_post['data']
    imagenes = []
    for post in posts:
        imagenes.append({'image':post['images']['thumbnail']['url'],'url':post['link']})
    return imagenes

@csrf_exempt
def instagram_timeline(request):
    if request.method == 'GET':
        instagram_images = getinstagram()
        return HttpResponse(json.dumps(instagram_images), content_type="application/json")
    return render(request)

def seturl(text, hashtags, users):
    for hash in hashtags:
        fullhash = '#'+hash.text
        text = text.replace(fullhash, '<a href="https://twitter.com/hashtag/%s" target="_blank">%s</a>' % (hash.text, fullhash))
    for user in users:
        fulluser = '@'+user.screen_name
        text = text.replace(fulluser, '<a href="https://twitter.com/%s" target="_blank">%s</a>' % (user.screen_name, fulluser))
    #indice = text.rindex("https")
    #url = text[indice:]
    #text = text.replace(url, '<br><a href="%s" class="btn btn-xs btn-java btn-tweet" target="_blank">MAS</a>' % (url))
    return text
  
def gettweets():
    api = twitter.Api(consumer_key='av2SewVZQOGxCNy5wB6FtdEd6',
                      consumer_secret='zr25IV7ECCd4Cq5uMlgj33pPLVaaz7Ri8cfi9jav9DP6q6DXkg',
                      access_token_key='989629773675683840-oyOipWn7irKhnQTy0t6Rhn5x4ObC9vV',
                      access_token_secret='e1PuQQ7vDnSTaPYiYbQAt04DAhIC7Eo0mzxhghTkPaLyU',
                      tweet_mode= 'extended')
    return api.GetUserTimeline(screen_name='OdontologiaULS', exclude_replies=True, include_rts=True, trim_user=False, count=9)

@csrf_exempt
def twitter_timeline(request):
    #return HttpResponse(gettweets())
    if request.method == 'GET':
        json_data = {}
        indice = 0
        tweets = gettweets()
        for tweet in tweets:
            if tweet.retweeted:
                text_url = seturl(tweet.retweeted_status.full_text, tweet.retweeted_status.hashtags, tweet.retweeted_status.user_mentions)
                temp = {
                    "tweet_id": tweet.id_str,
                    "created_at": tweet.created_at,
                    "full_text": text_url,
                    "user_name": tweet.retweeted_status.user.name,
                    "user_screen_name": tweet.retweeted_status.user.screen_name,
                    "user_created_at": tweet.retweeted_status.created_at,
                    "user_image": tweet.retweeted_status.user.profile_image_url_https,
                    "user_url": tweet.retweeted_status.user.url,
                }
            else:
                text_url = seturl(tweet.full_text, tweet.hashtags, tweet.user_mentions)
                temp = {
                    "tweet_id": tweet.id_str,
                    "created_at": tweet.created_at,
                    "full_text": text_url,
                    "user_name": tweet.user.name,
                    "user_screen_name": tweet.user.screen_name,
                    "user_created_at": tweet.created_at,
                    "user_image": tweet.user.profile_image_url_https,
                    "user_url": tweet.user.url,
                }
            json_data['tweet'+str(indice)] = temp
            indice += 1
        return HttpResponse(json.dumps(json_data, sort_keys=True), content_type="application/json")
    return render(request)

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

def handler404(request):
    return render(request, '404.html', status=404)

def handler500(request):
    return render(request, '500.html', status=500)
