# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from ckeditor.fields import RichTextField

from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions
from ckeditor_uploader.fields import RichTextUploadingField


TITULO = (
    ('candidato_doctor', 'C.D.'),
    ('profesor', 'Profesor'),
    ('magister', 'MG.'),
)

AREA = (
    ('docente', 'docente'),
    ('endodoncia', 'endodoncia'),
    ('odontopediatria', 'odontopediatria'),
)

def validate_image(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 270 and h != 270:
        raise ValidationError("Las dimensiones de la foto son de %ix%i, y estas deben ser de 270x270 pixeles" %(h,w))



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
    fecha_contacto = models.DateTimeField()

    class Meta:
        ordering = ["fecha_contacto"]

# Clase para definición de contenido estandar
class Contenido(models.Model):
	seccion = models.CharField(max_length=100, blank=False, null=False)
	texto = RichTextUploadingField(max_length=10000, blank=True, null=True, config_name='awesome_ckeditor')


class Docentes(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellido_paterno = models.CharField(max_length=100, blank=False, null=False)
    apellido_materno = models.CharField(max_length=100, blank=True, null=True)
    cargo = models.CharField(max_length=100, blank=False, null=False)
    titulo = models.CharField(max_length=20, choices=TITULO)
    area = models.CharField(max_length=30, choices=AREA)

    foto = models.ImageField(upload_to='carrera/docente/', height_field=None, width_field=None, max_length=100, validators=[validate_image], help_text='Tamano maximo de la imagen es 1Mb, sus dimensiones deben ser de 270x270 pixeles')
    nivel = models.IntegerField(default=1)

    class Meta:
        ordering = ["nivel"]

    def __str__(self): # __unicode__ en Python 2
        return '%s %s %s' % (self.nombres.encode('utf8'), self.apellido_paterno.encode('utf8'), self.apellido_materno.encode('utf8'))

    def nombre_completo(self):
        return '%s %s %s' % (self.nombres.encode('utf8'), self.apellido_paterno.encode('utf8'), self.apellido_materno.encode('utf8'))

    def image_foto(self):
          if self.foto:
              return u'<img width="270px" height="auto" src="%s" />' % self.foto.url
          else:
              return '(Sin imagen)'
    image_foto.short_description = 'Imagen'
    image_foto.allow_tags = True
