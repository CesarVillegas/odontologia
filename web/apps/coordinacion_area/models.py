# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions

# Create your models here.
def validate_image_docente(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 270 and h != 270:
        raise ValidationError("Las dimensiones de la foto son de %ix%i, y estas deben ser de 270x270 pixeles" %(h,w))

# Clase para los coordinadores por area
class Coordinador(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellido_paterno = models.CharField(max_length=100, blank=False, null=False)
    apellido_materno = models.CharField(max_length=100, blank=False, null=False)
    cargo = models.CharField(max_length=100, blank=False, null=False)

    foto = models.ImageField(upload_to='coordinacion_area/coordinadores/', height_field=None, width_field=None, max_length=100, validators=[validate_image_docente], help_text='Tamano maximo de la imagen es 1Mb, sus dimensiones deben ser de 270x270 pixeles')
    nivel = models.IntegerField(default=1)

    class Meta:
        verbose_name_plural = "Coordinadores"
        ordering = ["nivel"]

    def __unicode__(self): # __str__ en Python 3
        return '%s %s %s' % (self.nombres, self.apellido_paterno, self.apellido_materno)

    def nombre_completo(self):
        return '%s %s %s' % (self.nombres, self.apellido_paterno, self.apellido_materno)

    def image_foto(self):
          if self.foto:
              return u'<img width="270px" height="auto" src="%s" />' % self.foto.url
          else:
              return '(Sin imagen)'
    image_foto.short_description = 'Imagen'
    image_foto.allow_tags = True