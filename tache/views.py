from django.shortcuts import render 
from django.shortcuts import get_object_or_404
from django.contrib.auth.decorators import login_required
from .models import Tache
from .forms import TacheForm
from django.shortcuts import redirect
from django.contrib.auth import authenticate , login, logout
from django.contrib import messages
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
import re
from django.db.models import Q


def inscription(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        username = request.POST["username"]
        password1 = request.POST["password1"]
        password2 = request.POST["password2"]
        
        if User.objects.filter(username=username).exists() :
            messages.error(request, "Un utilisateur avec ce nom existe deja")
        elif len(password1)< 8 :
            messages.error(request, "Le mot de passe doit contenir au moins 8 caractéres")
        elif not re.search(r"\d" , password1) or not re.search(r"[A-Za-z]" , password1) :
            messages.error(request, "Le mot de passe doit etre un melange de chifre et de lettre")
        elif password1!=password2 :
            messages.error(request, "veuillez renseingner les memes mots de passe")
        elif form.is_valid():
            form.save()
            return redirect('connexion')

            
            
            
        
        
    else:
        form = UserCreationForm()
        
    
    return render(request, 'inscription.html', {'form': form})
    

















# Create your views here.
@login_required
def list_tache(request):
    query = request.GET.get('q')
    filter_by = request.GET.get('filter_by')
    order_by = request.GET.get('order_by')
    
    taches = Tache.objects.filter(user=request.user)
    
    if query:
        taches = taches.filter(
            Q(title__icontains=query) | 
            Q(description__icontains=query)
        )
        
    if filter_by:
        if filter_by == 'completed':
            taches = taches.filter(etat=True)
        elif filter_by == 'pending':
            taches = taches.filter(etat=False)
    
    if order_by:
        taches = taches.order_by(order_by)
    
    return render(request, 'list_tache.html', {"taches": taches})

@login_required
def creer_new_tache (request) : 
    if request.method == 'POST' :
        form = TacheForm(request.POST)
        if form.is_valid() : 
            tache = form.save(commit=False)
            tache.user =request.user
            tache.save()
            
            return redirect("list_tache")
    else :
        form = TacheForm()
    return render (request, 'creer_new_tache.html', {"form" : form})
        
    

@login_required
def modif_tache (request, tache_id) : 
    tache = get_object_or_404(Tache , pk = tache_id, )
    if request.method == 'POST' :
        form = TacheForm(request.POST, instance = tache)
        if form.is_valid() :
            form.save()
            return redirect ("list_tache")
    else :
            form = TacheForm(instance = tache)
    return render(request , 'modif_tache.html' , 
                          {"form" : form})
    

@login_required
def sup_tache (request, tache_id) : 
    tache = get_object_or_404(Tache , pk = tache_id)
    if request.method == 'POST' :
        tache.delete()
        return redirect("list_tache")
    
    return render (request, 'sup_tache.html', {"tache" : tache})


@login_required
def toggle_tache_etat(request, tache_id):
    tache = get_object_or_404(Tache, pk=tache_id)
    if request.method == 'POST':
        # Inverse l'état de la tâche
        tache.etat = not tache.etat
        tache.save()
        return redirect('list_tache')
    
    
    
# def inscription(request):
#     if request.method == 'POST':
#         form = UserCreationForm(request.POST)
#         if form.is_valid():
#             form.save()
#             return redirect('connexion')
#     else:
#         form = UserCreationForm()
        
    
#     return render(request, 'inscription.html', {'form': form})
 
 
 
     
def connexion (request) :
    
    if request.method == 'POST' :
        
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)
        if user is not None :
            login(request , user)
            return redirect("list_tache")
        else:
           messages.error(request, 'Invalid username or password')
    
    return render(request, 'connexion.html')
            
        

def deconnexion (request) :
    logout(request)
    return redirect("connexion")

        




    
    
    

    
# def inscription (request) : 
#     if request.method == 'POST' :
#         form = Register(request.POST)
#         if form.is_valid() : 
#             form.save()
#             return redirect("list_tache")
#     else :
#         form = Register()
#     return render (request, 'inscription.html', {"form" : form})
    
    
    

    
    
