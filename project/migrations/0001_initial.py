# Generated by Django 3.2.16 on 2023-02-19 10:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='address',
            fields=[
                ('addressid', models.AutoField(primary_key=True, serialize=False)),
                ('firstname', models.CharField(max_length=20, verbose_name='firstname')),
                ('lastname', models.CharField(max_length=20, verbose_name='lastname')),
                ('street', models.CharField(max_length=100, verbose_name='street')),
                ('state', models.CharField(max_length=30, verbose_name='state')),
                ('postalcode', models.CharField(max_length=10, verbose_name='postalcode')),
                ('mail', models.EmailField(max_length=30, verbose_name='mail')),
                ('phone', models.CharField(max_length=30, verbose_name='phone')),
            ],
        ),
        migrations.CreateModel(
            name='banner',
            fields=[
                ('bannerid', models.AutoField(primary_key=True, serialize=False)),
                ('banner', models.FileField(upload_to='banners/', verbose_name='banner')),
            ],
        ),
        migrations.CreateModel(
            name='cart',
            fields=[
                ('cartid', models.AutoField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='category',
            fields=[
                ('categoryid', models.AutoField(primary_key=True, serialize=False)),
                ('categoryname', models.CharField(max_length=20, verbose_name='categoryname')),
                ('offerpercentage', models.IntegerField(default=0, null=True, verbose_name='offerpercentage')),
            ],
        ),
        migrations.CreateModel(
            name='coupon',
            fields=[
                ('couponid', models.AutoField(primary_key=True, serialize=False)),
                ('couponname', models.CharField(max_length=30, verbose_name='couponname')),
                ('couponcode', models.CharField(max_length=20, unique=True, verbose_name='couponcode')),
                ('expirytdate', models.DateField(verbose_name='expirydate')),
                ('percentage', models.IntegerField(verbose_name='percentage')),
            ],
        ),
        migrations.CreateModel(
            name='order',
            fields=[
                ('orderid', models.AutoField(primary_key=True, serialize=False)),
                ('ordernumber', models.CharField(max_length=20, unique=True)),
                ('orderdate', models.DateTimeField(auto_now_add=True)),
                ('discount', models.CharField(default=None, max_length=20, verbose_name='discount')),
                ('ordernotes', models.CharField(max_length=255, null=True, verbose_name='ordernotes')),
                ('status', models.CharField(default='waiting', max_length=20, verbose_name='status')),
                ('totalamount', models.CharField(max_length=20, verbose_name='totalamount')),
                ('paymentmode', models.CharField(max_length=30, verbose_name='paymentmode')),
                ('address', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.address')),
                ('coupon', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='project.coupon')),
            ],
        ),
        migrations.CreateModel(
            name='product',
            fields=[
                ('productid', models.AutoField(primary_key=True, serialize=False)),
                ('productname', models.CharField(max_length=30, verbose_name='productname')),
                ('quantity', models.CharField(max_length=20, verbose_name='quantity')),
                ('price', models.CharField(max_length=10, verbose_name='price')),
                ('discountprice', models.IntegerField(verbose_name='discountprice')),
                ('offerpercentage', models.IntegerField(default=0, null=True, verbose_name='offerpercentage')),
                ('provider', models.CharField(max_length=20, verbose_name='provider')),
                ('image', models.ImageField(upload_to='products/', verbose_name='image')),
                ('description', models.TextField(verbose_name='description')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.category')),
            ],
        ),
        migrations.CreateModel(
            name='user',
            fields=[
                ('userid', models.AutoField(primary_key=True, serialize=False)),
                ('email', models.EmailField(max_length=40, verbose_name='email')),
                ('username', models.CharField(max_length=30, verbose_name='username')),
                ('password', models.CharField(max_length=30, verbose_name='password')),
                ('phone', models.CharField(max_length=10, verbose_name='phone')),
                ('role', models.CharField(max_length=20, verbose_name='role')),
                ('status', models.CharField(max_length=20, verbose_name='status')),
            ],
        ),
        migrations.CreateModel(
            name='wishlist',
            fields=[
                ('wishlistid', models.AutoField(primary_key=True, serialize=False)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.user')),
            ],
        ),
        migrations.CreateModel(
            name='wishlistitems',
            fields=[
                ('wishlistitemsid', models.AutoField(primary_key=True, serialize=False)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.product')),
                ('wishlist', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.wishlist')),
            ],
        ),
        migrations.CreateModel(
            name='orderitems',
            fields=[
                ('orderitemid', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.CharField(max_length=20)),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.order')),
                ('product', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='project.product')),
            ],
        ),
        migrations.AddField(
            model_name='order',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.user'),
        ),
        migrations.CreateModel(
            name='cartitem',
            fields=[
                ('cartitemid', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.PositiveBigIntegerField()),
                ('cart', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.cart')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.product')),
            ],
        ),
        migrations.AddField(
            model_name='cart',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.user'),
        ),
        migrations.AddField(
            model_name='address',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project.user'),
        ),
    ]
