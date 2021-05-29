from django import forms

class UploadForm(forms.Form):
    description = forms.CharField(required=False)
    # image = 