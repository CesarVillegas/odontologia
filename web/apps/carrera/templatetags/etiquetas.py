# -*- coding: utf-8 -*-

import re
from django import template
from django.core.urlresolvers import reverse, NoReverseMatch
register=template.Library() 

@register.simple_tag(takes_context=True)
def active_menu(context, pattern):
    try:
        patron = '^' + reverse(pattern)
    except NoReverseMatch:
        patron = pattern
    path = context['request'].path
    if re.search(patron, path):
        return 'active'
    return ''
