# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^equipo_directivo/equipo_directivo/$', views.equipo_directivo, name='equipo_directivo'),
]