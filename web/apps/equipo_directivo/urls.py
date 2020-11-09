# -*- coding: utf-8 -*-
from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^equipod/$', views.equipo_directivo, name='equipod'),
]