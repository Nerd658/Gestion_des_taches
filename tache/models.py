from django.db import models
from django.contrib.auth.models import User



# Create your models here.
class Tache (models.Model) : 
    title = models.CharField(max_length=25)
    description = models.CharField(max_length=64)
    date = models.DateTimeField(auto_now_add=True)
    etat = models.BooleanField(default=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
   
    
    def __str__(self):
        return self.title
    

