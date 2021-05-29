from django.http.response import HttpResponse
from django.shortcuts import render
from .forms import UploadForm

# Create your views here.
def form(request):
    formToRender = UploadForm
    return render(request, 'form.html', {'form': formToRender})