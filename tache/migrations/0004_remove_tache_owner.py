# Generated by Django 5.0.6 on 2024-06-27 09:54

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tache', '0003_tache_owner'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tache',
            name='owner',
        ),
    ]
