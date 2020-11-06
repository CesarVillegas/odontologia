# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Directivo

class DirectivoAdmin(admin.ModelAdmin):
    list_display = ('nombre_completo', 'image_foto', 'cargo')

admin.site.register(Directivo, DirectivoAdmin)