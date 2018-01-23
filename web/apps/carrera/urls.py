# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^admision/$', views.admision, name='admision'),
    url(r'^perfil/$', views.perfil, name='perfil'),
    url(r'^objetivos/$', views.mision, name='objetivos'),
    url(r'^plan/$', views.plan, name='plan'),
    url(r'^organigrama/$', views.organigrama, name='organigrama'),
    url(r'^docentes/$', views.docentes),
    url(r'^contacto/$', views.contacto, name='contacto'),
    url(r'^404/$', views.handler404, name='handler404'),
    url(r'^500/$', views.handler500, name='handler500'),
]
