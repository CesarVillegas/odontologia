# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from ckeditor.fields import RichTextField
from django.core.exceptions import ValidationError
from django.dispatch import receiver
from django.core.files.images import get_image_dimensions
from ckeditor_uploader.fields import RichTextUploadingField


def validate_image_actividad(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    w, h = get_image_dimensions(fieldfile_obj)
    if w != 740 and h != 480:
        raise ValidationError("Las dimensiones de la imagen son de %ix%i, y estas deben ser de 740x480 pixeles" %(h,w))


class Actividad(models.Model):
    titulo = models.CharField(max_length=150, blank=False, null=False)
    descripcion = RichTextUploadingField(max_length=35000, blank=True, null=True, config_name='awesome_ckeditor')
    inicio = models.DateTimeField(blank=True, null=True)
    cierre = models.DateTimeField(blank=True, null=True)
    imagen = models.ImageField(upload_to='calendario/', height_field=None, width_field=None, max_length=100, blank=False, validators=[validate_image_actividad], help_text='Tamano maximo de la imagen es 1Mb, sus dimensiones deben ser de 740x480 pixeles')
    mostrar = models.BooleanField(default=True, help_text="Visualizar actividad.")

    class Meta:
        verbose_name_plural = "Actividades"

    def image_preview(self):
        if self.imagen:
            return u'<img width="100px" height="auto" src="%s" />' % self.imagen.url
        else:
            return '(Sin imagen)'
    image_preview.short_description = 'Imagen'
    image_preview.allow_tags = True


@receiver(models.signals.post_delete, sender=Actividad)
def auto_delete_file_on_delete_act(sender, instance, **kwargs):
    if instance.imagen:
        if os.path.isfile(instance.imagen.path):
            os.remove(instance.imagen.path)


@receiver(models.signals.pre_save, sender=Actividad)
def auto_delete_file_on_change_act(sender, instance, **kwargs):
    if not instance.pk:
        return False

    try:
        old_imagen = Actividad.objects.get(pk=instance.pk).imagen
    except Actividad.DoesNotExist:
        return False

    new_imagen = instance.imagen
    if not old_imagen == new_imagen:
        if os.path.isfile(old_imagen.path):
            os.remove(old_imagen.path)

