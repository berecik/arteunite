# Generated by Django 3.1.6 on 2021-03-06 03:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dolacz', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='dolaczpage',
            name='pokaz_email',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='dolaczpage',
            name='pokaz_imie',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='dolaczpage',
            name='pokaz_jak_sie_dowiedziales',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='dolaczpage',
            name='pokaz_napisz_do_nas',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='dolaczpage',
            name='pokaz_newsletter',
            field=models.BooleanField(default=True),
        ),
    ]
