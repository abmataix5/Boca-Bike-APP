# Generated by Django 4.0.1 on 2022-02-17 15:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('notifications', '0003_notification_state'),
    ]

    operations = [
        migrations.RenameField(
            model_name='notification',
            old_name='user',
            new_name='user_admin',
        ),
    ]
