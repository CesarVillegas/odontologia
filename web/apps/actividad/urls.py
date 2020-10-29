# -*- coding: utf-8 -*-
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.actividades, name='actividades'),
    url(r'^(?P<actid>\d+)/$', views.detalle, name='detalle'), 
]