# Generated by Django 4.0.1 on 2022-02-10 14:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0002_alter_profile_id'),
        ('rents', '0002_alter_rent_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rent',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='profiles.profile'),
        ),
    ]
