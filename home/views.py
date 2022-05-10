from django.shortcuts import render
from store.models import Product
from category.models import Category
import logging 


logger = logging.getLogger(__name__)
def home(request):
    links = Category.objects.all()
    context = {
        "links": links
    }
    logger.debug("[debug] You are at home page")
    logger.warn("[warn] Log mode: warn")
    return render(request, 'home.html', context=context)