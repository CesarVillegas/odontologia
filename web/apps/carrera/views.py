# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Admision

# Create your views here.
def index(request):
    return render(request, 'carrera/index.html')

def admision(request):
    admisiones = Admision.objects.all().last()
    return render(request, 'carrera/admision.html', {'admisiones': admisiones})

def handler404(request):
    return render(request, '404.html', status=404)

def handler500(request):
    return render(request, '500.html', status=500)
