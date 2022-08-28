# Generated by Django 4.0.2 on 2022-03-30 13:32

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('GroupPortal', '0002_alter_leaderboard_winner_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='leaderboard',
            name='trophy_collected',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='leaderboard',
            name='winner_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
