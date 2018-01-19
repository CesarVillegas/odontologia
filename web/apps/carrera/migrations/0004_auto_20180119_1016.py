# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('carrera', '0003_contenido'),
    ]

    operations = [
        migrations.AddField(
            model_name='contactos',
            name='apellidos',
            field=models.CharField(default=11, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='contactos',
            name='celular',
            field=models.CharField(default=11, max_length=8),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='contactos',
            name='email',
            field=models.EmailField(default=11, max_length=254),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='contactos',
            name='mensaje',
            field=ckeditor.fields.RichTextField(max_length=500, null=True, blank=True),
        ),
    ]
