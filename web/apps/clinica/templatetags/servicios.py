from apps.clinica.models import TipoServicio
from django import template
register = template.Library()

@register.inclusion_tag('lista_servicios.html')
def servicios():
    tipo_servicios = TipoServicio.objects.all()
    return {'servicios': tipo_servicios,}