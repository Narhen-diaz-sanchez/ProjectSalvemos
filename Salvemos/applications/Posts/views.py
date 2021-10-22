from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls.base import reverse_lazy
from django.views.generic import (
    ListView,
    DetailView,
)
from django.views.generic.edit import FormView
from .models import Posts, Category
from .forms import *
# Create your views here.


class PostsListView(LoginRequiredMixin, ListView):
    """Vista para mostrar los posts en el feed"""
    template_name = "Posts/feed.html"
    context_object_name = 'Posts'
    paginated_by = 10
    login_url = reverse_lazy('Users_app:user-login')
    
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


class NewPost(LoginRequiredMixin, FormView):
    template_name = 'Posts/new_post.html'
    form_class = NewPostForm
    success_url = reverse_lazy('Posts_app:Posts-lista')
    login_url = reverse_lazy('Users_app:user-login')

    def form_valid(self, form):
        usuario = self.request.user
        Posts.objects.create(
            user=usuario,
            category=form.cleaned_data['category'],
            #tag=tag,
            title=form.cleaned_data['title'],
            resume=form.cleaned_data['resume'],
            content=form.cleaned_data['content'],
            image=form.cleaned_data['image'],
            public=True,
        )
        return super(NewPost, self).form_valid(form)
