# django-ui

This repository is a part of RMIT University -> COSC2673 Machine Learning -> Assignment 2.

## Dev set-up:

- Use of [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) is encouraged on the Windows machines.
- Use [Python virtual environments](https://www.web-devil.com/2019/05/python-django-development-on-windows-with-wsl/).

## Requirements:

- numpy==1.20.3
- Django==3.2.3
- tensorflow==2.5.0
- Pillow==8.2.0

## Steps to run project locally:

1. With current working directory as the `Python-Project`, where `manage.py` is located,
2. Run `python manage.py migrate`
3. Run `python manage.py runserver` -> This will run the django server at http://127.0.0.1:8000/

## WebApp Navigation Guide:

1. A user can upload an image on the Home Page of the WebApp.
2. Here, the user must enter the file name same as the uploaded image. Adding `.png` is not required.
3. Clicking on Submit will run the ML models and give appropriate outputs to the user.
