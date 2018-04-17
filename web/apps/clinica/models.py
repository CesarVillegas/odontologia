# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions
from ckeditor_uploader.fields import RichTextUploadingField

CARGO = (
    ('director', 'Director Técnico'),
    ('enfermera', 'Enfermera Coordinadora'),
    ('tecnico', 'Técnico Dental'),
    ('secretaria', 'Secretaria Administrativa'),
    ('auxiliar', 'Auxiliar de Servicio'),
)

TIPO_SERVICIO = (
    ('imagenologia ', 'Imagenología'),
    ('odontologia', 'Odontología'),
)

def validate_image(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 270 and h != 270:
        raise ValidationError("Las dimensiones de la foto son de %ix%i, y estas deben ser de 270x270 pixeles" %(h,w))

def validate_image_galeria(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 1200 and h != 800:
        raise ValidationError("Las dimensiones de la foto son de %ix%i, y estas deben ser de 1200x800 pixeles" %(h,w))

class Contenido(models.Model):
	seccion = models.CharField(max_length=100, blank=False, null=False)
	texto = RichTextUploadingField(max_length=35000, blank=True, null=True, config_name='awesome_ckeditor')

class Equipo(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellido_paterno = models.CharField(max_length=100, blank=False, null=False)
    apellido_materno = models.CharField(max_length=100, blank=False, null=False)
    cargo = models.CharField(max_length=10, choices=CARGO)
    foto = models.ImageField(upload_to='clinica/equipo/', height_field=None, width_field=None, max_length=100, validators=[validate_image], help_text='Tamano maximo de la imagen es 1Mb, sus dimensiones deben ser de 270x270 pixeles')
    nivel = models.IntegerField(default=1)

    class Meta:
        ordering = ["nivel"]

    def __unicode__(self): # __str__ en Python 3
        return '%s %s %s' % (self.nombres, self.apellido_paterno, self.apellido_materno)

    def nombre_completo(self):
        return '%s %s %s' % (self.nombres, self.apellido_paterno, self.apellido_materno)

    def image_foto(self):
          if self.foto:
              return u'<img width="125px" height="auto" src="%s" />' % self.foto.url
          else:
              return '(Sin imagen)'
    image_foto.short_description = 'Imagen'
    image_foto.allow_tags = True

class Servicio(models.Model):
    nombre = models.CharField(max_length=200, blank=False, null=False)
    tipo_servicio = models.CharField(max_length=13, choices=TIPO_SERVICIO)

class Galeria(models.Model):
    nombre = models.CharField(max_length=200, blank=False, null=False)

    def __unicode__(self): # __unicode__ en Python 2
        return '%s' % (self.nombre)

class Imagen(models.Model):
    url = models.ImageField(upload_to='clinica/galeria/', height_field=None, width_field=None, max_length=100, validators=[validate_image_galeria], help_text='Tamano maximo de la imagen es de 1Mb y sus dimensiones deben ser de 1200x800px')
    galeria = models.ForeignKey(Galeria, on_delete=models.CASCADE)
    nivel = models.IntegerField(default=1)

    class Meta:
        verbose_name_plural = "imagenes"

    def image_img(self):
        if self.url:
            return u'<img width="125px" height="auto" src="%s" />' % self.url.url
        else:
            return '(Sin imagen)'
    image_img.short_description = 'Preview'
    image_img.allow_tags = True
