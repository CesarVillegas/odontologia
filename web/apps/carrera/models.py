# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from ckeditor.fields import RichTextField
from django.core.exceptions import ValidationError
from django.dispatch import receiver
from django.core.files.images import get_image_dimensions
from ckeditor_uploader.fields import RichTextUploadingField


AREA = (
    ('rehabilitacion_oral', 'Rehabilitación Oral'),
    ('odontopediatria', 'Odontopediatría'),
    ('periodoncia', 'Periodoncia'),
    ('endodoncia', 'Endodoncia'),
    ('cirugia', 'Cirugía'),
    ('ciencias_preclinicas', 'Ciencias Básicas y Preclínicas'),
    ('ortodoncia_ortopedia', 'Ortodoncia y Ortopedia'),
    ('radiologia_imagenologia', 'Radiología y Imagenología'),
)


CONTACTO_DESTINO = (
    ('carrera', 'Carrera'),
    ('clinica', 'Clínica'),
)


def validate_image_docente(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 270 and h != 270:
        raise ValidationError("Las dimensiones de la foto son de %ix%i, y estas deben ser de 270x270 pixeles" %(h,w))


# Clase de admision
class Admision(models.Model):
    anio = models.PositiveSmallIntegerField(verbose_name="año")
    puntaje_minimo = models.FloatField(verbose_name="puntaje mínimo")
    puntaje_maximo = models.FloatField(verbose_name="puntaje máximo")
    puntaje_ponderado = models.FloatField(verbose_name="puntaje ponderado")
    vacantes = models.PositiveSmallIntegerField(verbose_name="Vacantes")

    class Meta:
         verbose_name_plural = "Admisiones"
         ordering = ["anio"]

    def __str__(self):
        return "%s " %self.anio


# Clase definición formulario de contacto
class Contacto(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellidos = models.CharField(max_length=100, blank=False, null=False)
    email = models.EmailField(max_length=254, blank=False, null=False)
    celular = models.CharField(max_length=8, blank=False, null=False)
    mensaje = RichTextField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')
    fecha_contacto = models.DateTimeField()
    contacto_destino = models.CharField(max_length=11, choices=CONTACTO_DESTINO)

    class Meta:
        ordering = ["fecha_contacto"]


# Clase para definición de contenido estandar
class Contenido(models.Model):
  seccion = models.CharField(max_length=100, blank=False, null=False)
  texto = RichTextUploadingField(max_length=35000, blank=True, null=True, config_name='awesome_ckeditor')


# Clase para los doscentes
class Docentes(models.Model):
    nombres = models.CharField(max_length=100, blank=False, null=False)
    apellido_paterno = models.CharField(max_length=100, blank=False, null=False)
    apellido_materno = models.CharField(max_length=100, blank=False, null=False)
    email = models.EmailField(max_length=254, default='')
    cargo = RichTextField(max_length=500, blank=False, null=True, config_name='awesome_ckeditor')
    titulo = models.CharField(max_length=150, blank=False, null=False)
    casa_estudio = models.CharField(max_length=150, default='')
    area = models.CharField(max_length=30, choices=AREA)
    especialidad = RichTextField(max_length=500, blank=False, null=True, config_name='awesome_ckeditor')
    postitulos = RichTextField(max_length=500, blank=False, null=True, config_name='awesome_ckeditor')
    registro_siss = models.CharField(max_length=100, blank=False, null=False, default=0)

    foto = models.ImageField(upload_to='carrera/docente/', height_field=None, width_field=None, max_length=100, validators=[validate_image_docente], help_text='Tamano maximo de la imagen es 1Mb, sus dimensiones deben ser de 270x270 pixeles')
    nivel = models.IntegerField(default=1)

    class Meta:
        verbose_name_plural = "Docentes"
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


class ActividadGruposInteres(models.Model):
    actividad = RichTextUploadingField(max_length=300, config_name='awesome_ckeditor')
    descripcion = RichTextUploadingField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')
    objetivo = RichTextUploadingField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')
    anio = models.CharField(max_length=30, verbose_name="Año", blank=True, null=True)
    grupo_interes = models.CharField(max_length=200, blank=False, null=False)
    orden = models.IntegerField(default=1, help_text="Orden que se desplegará la actividad")
    mostrar = models.BooleanField(default=True, help_text="Mostrar u ocultar la actividad")

class ActividadCientificoProductivo(models.Model):
    actividad = RichTextUploadingField(max_length=300, config_name='awesome_ckeditor')
    descripcion = RichTextUploadingField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')
    anio = models.CharField(max_length=30, verbose_name="Año", blank=True, null=True)
    orden = models.IntegerField(default=1, help_text="Orden que se desplegará la actividad")
    mostrar = models.BooleanField(default=True, help_text="Mostrar u ocultar la actividad")

class ActividadPoliticaPublicaParticipacion(models.Model):
    fecha = models.CharField(max_length=20)
    institucion_externa = models.CharField(max_length=100)
    objetivo_reunion = RichTextUploadingField(max_length=300, config_name='awesome_ckeditor')
    tipo_participacion = RichTextUploadingField(max_length=300, config_name='awesome_ckeditor')
    orden = models.IntegerField(default=1, help_text="Orden que se desplegará la actividad")
    mostrar = models.BooleanField(default=True, help_text="Mostrar u ocultar la actividad")

class TipoPoliticaPublica(models.Model):
    id = models.AutoField(primary_key=True)
    descripcion = models.CharField(max_length=400, blank=False, null=False)
    orden = models.IntegerField(default=1, help_text="Orden que se desplegará tipo politica publica")
    mostrar = models.BooleanField(default=True, help_text="Mostrar u ocultar el tipo")


class ActividadPoliticaPublica(models.Model):
    actividad = RichTextUploadingField(max_length=300, config_name='awesome_ckeditor')
    descripcion = RichTextUploadingField(max_length=500, blank=True, null=True, config_name='awesome_ckeditor')
    participantes = RichTextUploadingField(max_length=300, blank=True, null=True, config_name='awesome_ckeditor')
    anio = models.CharField(max_length=30, verbose_name="Año", blank=True, null=True)
    grupo_interes = models.CharField(max_length=200, blank=False, null=False)
    tipo = models.ForeignKey(TipoPoliticaPublica, on_delete=models.CASCADE)
    orden = models.IntegerField(default=1, help_text="Orden que se desplegará la actividad")
    mostrar = models.BooleanField(default=True, help_text="Mostrar u ocultar la actividad")

class ActividadNumeroBeneficiario(models.Model):
    anio = models.CharField(max_length=10, verbose_name="Año")
    beneficiario = models.CharField(max_length=30)
