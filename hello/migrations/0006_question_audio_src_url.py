# Generated by Django 4.1.3 on 2022-11-04 23:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hello', '0005_alter_question_ask_count'),
    ]

    operations = [
        migrations.AddField(
            model_name='question',
            name='audio_src_url',
            field=models.CharField(default="", max_length=255),
        ),
    ]