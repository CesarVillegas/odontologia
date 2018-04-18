# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^carrera/admision/$', views.admision, name='admision'),
    url(r'^carrera/perfilp/$', views.perfilp, name='perfilp'),
    url(r'^carrera/perfile/$', views.perfile, name='perfile'),
    url(r'^carrera/objetivos/$', views.mision, name='objetivos'),
    url(r'^carrera/plan/$', views.plan, name='plan'),
    url(r'^carrera/organigrama/$', views.organigrama, name='organigrama'),
    url(r'^carrera/docentes/$', views.docentes),
    url(r'^carrera/contacto/$', views.contacto, name='contacto'),
    url(r'^carrera/timeline/$', views.timeline, name='timeline'),
    url(r'^404/$', views.handler404, name='handler404'),
    url(r'^500/$', views.handler500, name='handler500'),
]
