# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models

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
