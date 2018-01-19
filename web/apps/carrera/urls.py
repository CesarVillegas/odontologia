# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^admision/$', views.admision, name='admision'),
    url(r'^perfil/$', views.perfil, name='perfil'),
    url(r'^mision/$', views.mision, name='mision'),
    url(r'^plan/$', views.plan, name='plan'),
    url(r'^organigrama/$', views.organigrama, name='organigrama'),
    url(r'^docentes/$', views.docentes),
    url(r'^contacto/$', views.contacto, name='contacto'),
]
