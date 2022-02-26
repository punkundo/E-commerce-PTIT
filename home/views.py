from django.shortcuts import render
from store.models import Product
from category.models import Category

def home(request):
    links = Category.objects.all()
    context = {
        "links": links
    }
    return render(request, 'home.html', context=context)