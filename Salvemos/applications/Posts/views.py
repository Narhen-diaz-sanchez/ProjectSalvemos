from django.shortcuts import render
from django.views.generic import (
    ListView,
    DetailView,
)
from .models import Posts, Category
# Create your views here.


class PostsListView(ListView):
    """Vista para mostrar los posts en el feed"""
    template_name = "Posts/feed.html"
    context_object_name = 'Posts'
    paginated_by = 10
    
    def get_context_data(self, **kwargs):
        context = super(PostsListView, self).get_context_data(**kwargs)
        context["categorias"]= Category.objects.all()
        return context
    
    
    def get_queryset(self):
        kword = self.request.GET.get("kword",'')
        categoria = self.request.GET.get("categoria",'')
        
        # COnsulta de busqueda
        resultado = Posts.objects.buscar_Post(kword, categoria)
        return resultado



class PostsDetailView(DetailView):
    model = Posts
    template_name = "Posts/detail.html"

