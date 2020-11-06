# -*- coding: utf-8 -*-
from django import forms
from .models import Documento


class DocumentoModelForm(forms.ModelForm):
    descripcion = forms.CharField( widget=forms.Textarea )

    class Meta:
        model = Documento
        fields = '__all__'