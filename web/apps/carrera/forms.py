#!/usr/bin/python
# -*- coding: utf-8 -*-

from django import forms
from .models import Contacto
from snowpenguin.django.recaptcha2.fields import ReCaptchaField
from snowpenguin.django.recaptcha2.widgets import ReCaptchaWidget

CONTACTO_DESTINO = (
    ('carrera', 'Carrera'),
    ('clinica', 'Clínica'),
)

class FormularioContacto(forms.Form):
    nombres = forms.CharField(label='Nombres', max_length=100, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','placeholder':'Ej: Abel', 'required': 'Por favor ingresa tu nombre','tabindex':'2'}))
    apellidos = forms.CharField(label='Apellidos', max_length=100, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','placeholder':'Ej: Pérez', 'required': 'Por favor ingresa tu apellido','tabindex':'3'}))
    email = forms.EmailField(label='Email', max_length=254, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required', 'placeholder':'Ej: jperezaracena@gmail.com', 'pattern':'[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}', 'required':'', 'tabindex':'4'}))
    celular = forms.RegexField(regex=r'[0-9]{8}', max_length=8,label='Celular', widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required', 'placeholder':'Ej: 87656748', 'pattern':'^[0-9]{8}$', 'required':'','tabindex':'5'}))
    mensaje = forms.CharField(label='Describa su solicitud. (500 caracteres)', required=False, max_length=500, widget=forms.Textarea(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','tabindex':'6'}))
    contacto_destino = forms.ChoiceField(label='Para:', choices=CONTACTO_DESTINO, widget=forms.Select(attrs={'class':'form-control','tabindex':'1'}))
    captcha = ReCaptchaField(widget=ReCaptchaWidget())