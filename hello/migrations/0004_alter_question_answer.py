# Generated by Django 4.1.3 on 2022-11-04 23:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("hello", "0003_delete_greeting_question_ask_count"),
    ]

    operations = [
        migrations.AlterField(
            model_name="question",
            name="answer",
            field=models.TextField(max_length=1000),
        ),
    ]
