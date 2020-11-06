# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from .models import Coordinador


def coordinacion(request):
    c = Coordinador.objects.all()
    return render(request, 'carrera/coordinacion.html', {'coordinadores': c})