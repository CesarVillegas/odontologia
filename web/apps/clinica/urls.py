# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^organigrama/$', views.organigrama, name='organigrama'),
    url(r'^mision/$', views.mision, name='mision'),
    url(r'^equipo/$', views.equipo, name='equipo'),
    url(r'^catedra/$', views.catedra, name='catedra'),
    url(r'^paciente/$', views.paciente, name='paciente'),
    url(r'^404/$', views.handler404, name='handler404'),
    url(r'^500/$', views.handler500, name='handler500'),
]
