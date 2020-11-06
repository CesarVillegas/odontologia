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
    url(r'^carrera/equipo_directivo/$', views.equipo_directivo,name='equipo_directivo'),
    url(r'^carrera/coordinacion/$', views.coordinacion,name='coordinacion'),
    url(r'^carrera/docentes/$', views.docentes),
    url(r'^carrera/docentes/detalle_academico/$', views.detalle_academico, name='detalle'),
    url(r'^carrera/contacto/$', views.contacto, name='contacto'),
    url(r'^carrera/twitter_timeline/$', views.twitter_timeline, name='twitter_timeline'),
    url(r'^carrera/instagram_timeline/$', views.instagram_timeline, name='instagram_timeline'),
    url(r'^carrera/vinculacion/$', views.vinculacion, name='vinculacion'),
    url(r'^carrera/pyp/$', views.pyp, name='pyp'),
]
