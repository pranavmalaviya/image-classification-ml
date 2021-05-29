from django.http.response import HttpResponse
from django.shortcuts import render
from .forms import UploadForm

# Create your views here.
def formView(request):
    # formToRender = UploadForm
    # return render(request, 'form.html', {'form': formToRender})
    """Process images uploaded by users"""
    if request.method == 'POST':
        form = UploadForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            # Get the current instance object to display in the template
            img_obj = form.instance
            return render(request, 'form.html', {'form': form, 'img_obj': img_obj})
    else:
        form = UploadForm()
    return render(request, 'form.html', {'form': form})