# -*- coding: utf-8 -*-
from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^politicas/$', views.documentos_politica, name='documentos_politica'),
    url(r'^productividad/$', views.cienciometria, name='productividad'),
]
