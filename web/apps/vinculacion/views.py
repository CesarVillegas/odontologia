from django.shortcuts import render
from apps.documentos.models import Documento
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Create your views here.

def index(request):
    return render(request, 'vinculacion/index.html')

def politicas(request):
    docs = Documento.objects.filter(mostrar=True, tipo_documento='P').order_by('titulo').order_by('prioridad')
    paginator = Paginator(docs, 6)
    page = request.GET.get('page')
    try:
        documentos = paginator.page(page)
    except PageNotAnInteger:
        documentos = paginator.page(1)
    except EmptyPage:
        documentos = paginator.page(paginator.num_pages)
    return render(request, 'vinculacion/politicas.html',{'documentos':documentos})

def actividades(request):
    return render(request, 'vinculacion/actividades.html')

def noticias(request):
    return render(request, 'vinculacion/noticias.html')
