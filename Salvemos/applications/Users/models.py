from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    PermissionsMixin,
)
#
from .managers import UserManager
# Create your models here.


class User(AbstractBaseUser, PermissionsMixin):

    GENDER_CHOICES = (
        ('M', 'Masculino'),
        ('F', 'Femenino'),
        ('A', 'Soy una Fundación'),
        ('O', 'Otros'),
    )

    email = models.EmailField(unique=True)
    name = models.CharField('Nombres', max_length=30)
    last_name = models.CharField('Apellidos', max_length=40, blank=True)
    is_foundation = models.BooleanField(default=False)
    
    genero = models.CharField(
        max_length=1,
        choices=GENDER_CHOICES,
        blank=True
    )
    date_birth = models.DateField(
        'Fecha de nacimiento',
        blank=True,
        null=True
    )
    #
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'

    REQUIRED_FIELDS = ['name']

    objects = UserManager()

    def get_short_name(self):
        return self.name

    def get_full_name(self):
        return self.name + ' ' + self.last_name
