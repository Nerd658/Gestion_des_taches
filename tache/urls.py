from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    
    
    path('i', views.list_tache, name='list_tache'),
    path('creer/', views.creer_new_tache, name='creer_new_tache'),
    path('modif/<int:tache_id>/', views.modif_tache, name='modif_tache'),
    path('sup/<int:tache_id>/', views.sup_tache, name='sup_tache'),
    path('toggle/<int:tache_id>/', views.toggle_tache_etat, name='toggle_tache_etat'),
    path('inscription', views.inscription, name='inscription'),
    path('', views.connexion, name='connexion'),
    path('deconnexion/', views.deconnexion, name='deconnexion'),
    
    
    
    
    
    
]

