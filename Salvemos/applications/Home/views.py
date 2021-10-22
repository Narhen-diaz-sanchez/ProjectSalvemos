from django.shortcuts import render
from django.core.mail import send_mail
from django.urls import reverse_lazy, reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponseRedirect

from django.views.generic import (
    FormView,
    TemplateView,
)
from applications.Posts.models import Posts
from .forms import *
from .models import Contact

class HomePageView(TemplateView):
    template_name = "Home/index.html"
    
    def get_context_data(self, **kwargs):
        context = super(HomePageView, self).get_context_data(**kwargs)
        # Contexto para enviar a la seccion de nuestro trabajo los 
        # ultimos post de la sección adoptar
        context["post_adoptar"] = Posts.objects.Post_en_portada_adopcion()
        # Contexto para enviar a la seccion de nuestro trabajo los 
        # ultimos post de la sección apadrinar
        context["post_apadrinar"] = Posts.objects.Post_en_portada_apadrinar()
        # Contexto para enviar a la seccion de nuestro trabajo los 
        # ultimos post de la sección donar
        context["post_donar"] = Posts.objects.Post_en_portada_donar()
        return context


class ContactView(FormView):
    template_name = 'Home/contacto.html'
    form_class = ContactForm
    success_url = reverse_lazy('Home_app:index')

    def form_valid(self, form):
        full_name = form.cleaned_data['full_name']
        email = form.cleaned_data['email']
        message = form.cleaned_data['message']
        Contact.objects.create(
            full_name=full_name,
            email=email,
            message=message,
        )
        return super(ContactView, self).form_valid(form)
