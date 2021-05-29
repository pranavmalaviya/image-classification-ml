from django.http.response import HttpResponse
from django.shortcuts import render

# Create your views here.
def form(request):
    return HttpResponse('form view')