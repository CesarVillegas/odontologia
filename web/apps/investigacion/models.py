# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from datetime import datetime

class IntegerRangeField(models.IntegerField):
    def __init__(self, verbose_name=None, name=None, min_value=None, max_value=None, **kwargs):
        self.min_value, self.max_value = min_value, max_value
        models.IntegerField.__init__(self, verbose_name, name, **kwargs)
    def formfield(self, **kwargs):
        defaults = {'min_value': self.min_value, 'max_value':self.max_value}
        defaults.update(kwargs)
        return super(IntegerRangeField, self).formfield(**defaults)

class Productividad(models.Model):
    hoy = datetime.now()
    temporada = IntegerRangeField(min_value=2014,max_value=2200,default=hoy.year,verbose_name="Año")
    produccion_investigacion = IntegerRangeField(min_value=0,max_value=200,default=0,verbose_name="N° de actividades o publicaciones asociadas a investigación")
    produccion_educacional = IntegerRangeField(min_value=0,max_value=200,default=0,verbose_name="N° de actividades o publicaciones asociadas a educación")

    class Meta:
        verbose_name_plural = "Cantidad de trabajos por año"
        ordering = ["temporada"]

