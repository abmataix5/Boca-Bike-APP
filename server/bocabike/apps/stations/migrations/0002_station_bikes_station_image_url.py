# Generated by Django 4.0.1 on 2022-01-25 16:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stations', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='station',
            name='bikes',
            field=models.CharField(default='Disponible', max_length=200),
        ),
        migrations.AddField(
            model_name='station',
            name='image_url',
            field=models.CharField(default='./descarga.jpeg', max_length=200),
        ),
    ]
