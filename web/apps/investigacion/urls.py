# -*- coding: utf-8 -*-

from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^documentos/$', views.documentos, name='documentos'),
    url(r'^cienciometria/$', views.cienciometria, name='cienciometria'),
]
