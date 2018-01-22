# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^admision/$', views.admision, name='admision'),
    url(r'^perfilp/$', views.perfilp, name='perfilp'),
    url(r'^perfile/$', views.perfile, name='perfile'),
    url(r'^objetivos/$', views.mision, name='objetivos'),
    url(r'^plan/$', views.plan, name='plan'),
    url(r'^organigrama/$', views.organigrama, name='organigrama'),
    url(r'^docentes/$', views.docentes),
    url(r'^contacto/$', views.contacto, name='contacto'),
]
