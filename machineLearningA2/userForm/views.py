from django.http.response import HttpResponse
from django.shortcuts import render, HttpResponseRedirect
from .forms import UploadForm
import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator
import os.path
from tensorflow.keras.preprocessing import image
import numpy as np

# Create your views here.
def formView(request):
    """Process images uploaded by users"""
    form = UploadForm(request.POST, request.FILES)
    if request.method == 'POST':
        
        if form.is_valid():
            form.save()
            # Get the current instance object to display in the template
            img_obj = form.instance
            model1 = tf.keras.models.load_model(os.path.join(os.getcwd(),'isCancerousModel\isCancerousFinalModel'))
            pathToImage = os.path.join(os.getcwd(),'..','media','testImages',img_obj.title+'.png')
            img = tf.keras.preprocessing.image.load_img(
                pathToImage, target_size=(27,27)
            )
            img_array = tf.keras.preprocessing.image.img_to_array(img)
            img_array = tf.expand_dims(img_array, 0)  # Create batch axis
            predictions1 = model1.predict(img_array)
            isCancerous = np.argmax(predictions1,axis = 1)
            print(isCancerous)
            model2 = tf.keras.models.load_model(os.path.join(os.getcwd(),'cellTypeModel\cellTypeFinalModel'))
            predictions2 = model2.predict(img_array)
            cellType = np.argmax(predictions2,axis = 1)
            print(cellType)
                
            if(cellType[0] == 0):
                cellTypeName = 'Fibroblast'
            elif(cellType[0] == 1):
                cellTypeName = 'Inflammatory'
            elif(cellType[0] == 2):
                cellTypeName = 'Epithelial'
            elif(cellType[0] == 3):
                cellTypeName = 'Others'
            else:
                cellTypeName = 'Invalid cell type'
                
            result = "CellType: " + str(cellType[0])  + " Name: " + cellTypeName + " isCancerous: " + str(isCancerous[0])

            return HttpResponse(result, content_type="text/plain")
            
        else:
            form = UploadForm()
    return render(request, 'form.html', {'form': form})