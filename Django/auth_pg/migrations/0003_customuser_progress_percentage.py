# Generated by Django 4.0.2 on 2022-04-05 04:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('auth_pg', '0002_customuser_userimage'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='progress_percentage',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
    ]