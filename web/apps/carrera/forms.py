#!/usr/bin/python
# -*- coding: utf-8 -*-

from django import forms
from .models import Contacto
#from smart_selects.form_fields import ChainedModelChoiceField

CONTACTO_DESTINO = (
    ('carrera', 'Carrera'),
    ('clinica', 'Clínica'),
)

class FormularioContacto(forms.Form):
    #rut = forms.RegexField(regex=r'([0-9]{1,2}).([0-9]{3}).([0-9]{3})-([0-9]|[kK])', max_length=12, label='Rut', widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ej: 15.652.873-6', 'pattern':'^[0-9]{1,2}(\.)[0-9]{3}(\.)[0-9]{3}-[0-9kK]$', 'required':''}))
    #nombres = forms.CharField(id="contacts-first-name" label="contacts-first-name", class="form-label", max_length=100, widget=forms.TextInput(attrs={'class':'form-control','placeholder':'Ej: Jaime Andres', 'required':''}))
    #nombres = forms.CharField(id="contacts-first-name" label="contacts-first-name", class="form-label form-label-outside text-dark rd-input-label",
    #max_length=100,
    #widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','placeholder':'Ej: Jaime Andres', 'required':''}))


    nombres = forms.CharField(label='Nombres', max_length=100, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','placeholder':'Ej: Abel', 'required': 'Por favor ingresa tu nombre','tabindex':'2'}))
    apellidos = forms.CharField(label='Apellidos', max_length=100, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','placeholder':'Ej: Pérez', 'required': 'Por favor ingresa tu apellido','tabindex':'3'}))
    #apellido_paterno = forms.CharField(label='Apellido Paterno', max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ej: Pérez', 'required':''}))
    #apellido_materno = forms.CharField(label='Apellido Materno', max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ej: Aracena', 'required':''}))
    email = forms.EmailField(label='Email', max_length=254, widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required', 'placeholder':'Ej: jperezaracena@gmail.com', 'pattern':'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$', 'required':'','tabindex':'4'}))
    celular = forms.RegexField(regex=r'[0-9]{8}', max_length=8,label='Celular', widget=forms.TextInput(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required', 'placeholder':'Ej: 87656748', 'pattern':'^[0-9]{8}$', 'required':'','tabindex':'5'}))
    mensaje = forms.CharField(label='Describa su solicitud. (500 caracteres)', required=False, max_length=500, widget=forms.Textarea(attrs={'class':'form-control form-control-last-child', 'data-constraints':'@Required','tabindex':'6'}))
    contacto_destino = forms.ChoiceField(label='Para:', choices=CONTACTO_DESTINO, widget=forms.Select(attrs={'class':'form-control','tabindex':'1'}))