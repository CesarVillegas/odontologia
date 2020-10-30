# -*- coding: utf-8 -*-
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.noticias, name='noticias'),
    url(r'^(?P<actid>\d+)/$', views.detalle, name='detalle'), 
]