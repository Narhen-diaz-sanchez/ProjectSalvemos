from django import forms
from django.forms import widgets
from .models import Posts
from ckeditor.widgets import CKEditorWidget

class NewPostForm(forms.ModelForm):
    content = forms.CharField(widget=CKEditorWidget())
    class Meta:
        model = Posts
        fields = (
            'category',
            'title',
            'resume',
            'image',
        )
        widgets={
            'category': forms.Select(
                attrs={
                    'class':'input__newpost',
                }
            ),
            'title': forms.TextInput(
                attrs ={
                    'class':'input__newpost',
                }
            ),
            'resume': forms.TextInput(
                attrs= {
                    'class':'input__newpost',
                }
            ),
            'public': forms.ImageField(
                label='Sube una imagen de la mascota',
            ),
            
        }