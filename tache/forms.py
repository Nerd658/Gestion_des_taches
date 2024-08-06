# tache/forms.py
from django import forms
from .models import Tache
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db import models


class TacheForm(forms.ModelForm):
    class Meta:
        model = Tache
        fields = ['title', 'description', 'etat']  
        
        
        
        
                

class CustomUserCreationForm(UserCreationForm) :
    password1 = forms.CharField(max_length=25)
    password2 = forms.CharField(max_length=25)
    

    class Meta :
        model = User
        fields = ['username', 'password1', 'password2']
        
class CustomUserAuth(forms.Form):
    username = forms.CharField(max_length=25)
    password = forms.CharField(widget=forms.PasswordInput)
    class Meta :
        fields = ["username", "password"]
    
    
        