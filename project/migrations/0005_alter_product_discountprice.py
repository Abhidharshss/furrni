# Generated by Django 3.2.16 on 2023-02-11 15:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0004_alter_product_discountprice'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='discountprice',
            field=models.IntegerField(verbose_name='discountprice'),
        ),
    ]
