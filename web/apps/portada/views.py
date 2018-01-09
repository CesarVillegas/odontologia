# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render


def psu(request):
    return render(request, 'carrera/psu.html')


def home(request):
    return render(request, 'carrera/home.html')


def handler404(request):
    return render(request, '404.html', status=404)


def handler500(request):
    return render(request, '500.html', status=500)
