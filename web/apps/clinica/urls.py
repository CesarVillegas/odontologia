# -*- coding: utf-8 -*-
from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^organigrama/$', views.organigrama, name='organigrama'),
    url(r'^servicios/(\d)+/$', views.servicios, name='servicios'),
    url(r'^equipo/$', views.equipo, name='equipo'),
    url(r'^catedra/$', views.catedra, name='catedra'),
    url(r'^faq/$', views.faq, name='faq'),
    url(r'^galeria/$', views.galeria, name='galeria'),
    url(r'^404/$', views.handler404, name='handler404'),
    url(r'^500/$', views.handler500, name='handler500'),
]
