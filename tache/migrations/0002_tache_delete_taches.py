# Generated by Django 5.0.6 on 2024-06-24 20:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tache', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='tache',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=25)),
                ('description', models.CharField(max_length=64)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('etat', models.BooleanField(default=False)),
            ],
        ),
        migrations.DeleteModel(
            name='taches',
        ),
    ]
