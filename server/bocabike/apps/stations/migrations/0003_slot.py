# Generated by Django 4.0.1 on 2022-01-25 18:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('bikes', '0001_initial'),
        ('stations', '0002_station_bikes_station_image_url'),
    ]

    operations = [
        migrations.CreateModel(
            name='Slot',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_bike', models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='slots', to='bikes.bike')),
                ('station', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='slots', to='stations.station')),
            ],
        ),
    ]
