# Machine Learning - Assignment 2

An assignment for COSC2673 Machine Learning at RMIT University.

## Project Background:

Your task is to develop a machine learning system that can classify histopathelogy images of colon cells. A basic description of histopathelogy images can be found here.

You will be using a modified version of the “CRCHistoPhenotypes” dataset for this task. The data set for you to use in this assignment has been specifically prepared for you, and is provided on Canvas. The dataset consists of 27x27 RGB images of colon cells from 99 different patients and you are expected to use the dataset to perform two tasks:

- Classify images according to whether given cell image represents a cancerous cells or not (isCancerous).
- Classify images according to cell-type, such as: fibroblast, inflammatory, epithelial or others.

The correct classification of the images is given by the “data labels mainData.csv” and “data labels extraData.csv”. For the first 60 patients, the medical experts have provided labels isCancerous and cell-type. However for the remaining 39 patients, the medical experts have only provided labels for isCancerous.

![image](https://user-images.githubusercontent.com/30822450/120934592-3e2f7a80-c742-11eb-9c42-889829c29425.png)

**(a).** Example histopathelogy image of the colon with individual cells marked with “blue” rectangles of size 27x27.
**(b).** Example of different cell types present in histopathelogy images of the colon.

You can find more information about the project at `./Project_Specification.pdf` **Section 3.1.1 Classify Images of Colon Cancer**

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
