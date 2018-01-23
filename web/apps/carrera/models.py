# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from ckeditor.fields import RichTextField

from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.
class Admision(models.Model):
    anio = models.PositiveSmallIntegerField(verbose_name="año")
    puntaje_minimo = models.FloatField(verbose_name="puntaje mínimo")
    puntaje_maximo = models.FloatField(verbose_name="puntaje máximo")
    puntaje_ponderado = models.FloatField(verbose_name="puntaje ponderado")
    vacantes = models.PositiveSmallIntegerField(verbose_name="Vacantes")

    #def __str__(self):
    #return "El año de ingreso es %s y puntaje %s " % (self.anio, self.puntaje_minimo)
    class Meta:
         verbose_name_plural = "Admisiones"
         ordering = ["anio"]

    def __str__(self):
        return "%s " %self.anio

# Clase definición formulario de contacto
class Contactos(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellidos = models.CharField(max_length=100, blank=False, null=False)
    email = models.EmailField(max_length=254, blank=False, null=False)
    celular = models.CharField(max_length=8, blank=False, null=False)
    mensaje = RichTextField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')


# Clase para definición de contenido estandar
class Contenido(models.Model):
	seccion = models.CharField(max_length=100, blank=False, null=False)
	texto = RichTextUploadingField(max_length=35000, blank=True, null=True, config_name='awesome_ckeditor')
