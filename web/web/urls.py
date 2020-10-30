# -*- coding: utf-8 -*-
"""web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from apps.carrera import views

# handler404 = views.handler404
# handler500 = views.handler500

urlpatterns = [
    url(r'^', include('apps.carrera.urls'), name='carrera'),
    url(r'^clinica/', include('apps.clinica.urls'), name='clinica'),
    url(r'^investigacion/', include('apps.investigacion.urls'), name='investigacion'),
    url(r'^vinculacion/', include('apps.vinculacion.urls'), name='vinculacion'),
    url(r'^documentos/', include('apps.documentos.urls'), name='documentos'),
    url(r'^noticia/', include('apps.noticia.urls'), name='noticia'),
    url(r'^adminodontologia/', admin.site.urls),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^404/$', views.handler404, name='handler404'),
    url(r'^500/$', views.handler500, name='handler500'),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
