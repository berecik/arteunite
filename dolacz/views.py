from django.shortcuts import redirect
from django.shortcuts import render

# Create your views here.

from django.shortcuts import get_object_or_404
from django.views import View
from django.views.generic.base import RedirectView

from .models import Contact


class ContactPost(View):
    def post(self, request):
        print(request.POST)
        contact = Contact()
        contact.name = request.POST.get('name')
        contact.newsletter = 'newsletter' in request.POST
        contact.email = request.POST.get('email')
        contact.find_us = request.POST.get('find-us')
        contact.message = request.POST.get('message')
        contact.save()

        return redirect(to="/")