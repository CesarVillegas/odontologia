# -*- coding: utf-8 -*-
from django.db import models
from django.core.exceptions import ValidationError
from django.dispatch import receiver
from ckeditor_uploader.fields import RichTextUploadingField
import os.path


def validate_document(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 15.0
    if filesize > megabyte_limit*1024*1024:
        raise ValidationError("El tamano maximo permitido es de %sMB" % str(megabyte_limit))
    ext = os.path.splitext(fieldfile_obj.name)[1]  # [0] returns path+filename
    valid_extensions = ['.pdf', '.docx', '.xlsx']
    if not ext.lower() in valid_extensions:
        raise ValidationError('El tipo de archivo que esta subiendo no esta permitido, solo formatos PDF, DOCX, XLSX.')


class Documento(models.Model):
    titulo = models.CharField(max_length=200, blank=False, null=False)
    descripcion = models.CharField(max_length=5000, null=True, blank=True)
    archivo = models.FileField(upload_to='documentos/', blank=False, max_length=20000, validators=[validate_document], help_text='Tamaño máximo del archivo es 15Mb y solo se permite .pdf .docx .xlsx.')
    mostrar = models.BooleanField(default=True, help_text="Visualizar este Documento.")
    prioridad = models.IntegerField(default=1, help_text="Prioridad en el que se publican estos contenidos.")

    def extension(self):
        name, extension = os.path.splitext(self.archivo.name)
        return extension

    def documento_preview(self):
        if self.archivo:
            return u'<a href="%s">Descargar</a>' % self.archivo.url
        else:
            return '(Sin archivo)'
    documento_preview.short_description = 'Documento'
    documento_preview.allow_tags = True


@receiver(models.signals.post_delete, sender=Documento)
def auto_delete_file_on_delete(sender, instance, **kwargs):
    if instance.archivo:
        if os.path.isfile(instance.archivo.path):
            os.remove(instance.archivo.path)


@receiver(models.signals.pre_save, sender=Documento)
def auto_delete_file_on_change(sender, instance, **kwargs):
    if not instance.pk:
        return False

    try:
        old_imagen = Documento.objects.get(pk=instance.pk).archivo
    except Documento.DoesNotExist:
        return False

    new_imagen = instance.archivo
    if not old_imagen == new_imagen:
        if os.path.isfile(old_imagen.path):
            os.remove(old_imagen.path)
