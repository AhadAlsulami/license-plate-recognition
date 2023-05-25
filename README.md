## Overview
This is a license plate recognition system that was developed to detect, recognize, and extract license plate information from images.

The system is built using MATLAB and uses various image processing techniques such as image segmentation, edge detection, and character recognition to extract the license plate information.  


## Instructions
Once the repository is installed, you can begin running the `plate_recognition.m` file.


## Methodology  
By using MATLAB Image Processing, we were able to transform the license plate character to a text 
format. The figures shown in Figure 1 illustrate how the images were processed [1].  

#### FIRST STEP: Developing a program that takes an image input from the user and processes it as follows:
- Converting the image from RGB to Grayscale.
- Converting from Grayscale to Binary scale.
- Detect the image edges.  

Once the license plate is detected, the program will read the characters from the image and find the 
highest matching alphanumeric.

#### SECOND STEP: In order to match the alphanumeric images with the input image, we created another program that holds binary alphanumeric images and stores them in a new template as data files.

<img src="https://github.com/AhadAlsulami/license-plate-recognition/assets/99281844/ff1cc7f1-c9d3-4e19-b8b3-bc0de664faaf" width="300">



## Findings
The program detected and processed the images but had some difficulty recognizing the characters on 
the license plates. This was due to the angles of the input images, the different languages on the plates, 
or the shape of the plates. An experiment of eleven images was as follows:  
<img src="https://github.com/AhadAlsulami/license-plate-recognition/assets/99281844/b08e0c84-c161-414a-88ee-9b34ea33f91b" width="550">

All license plates were detected and recognized correctly except for numbers 7 and 8, which showed 
some errors in character recognition. Additionally, we tested the program with Arabic license plates and 
found the following:
<img src="https://github.com/AhadAlsulami/license-plate-recognition/assets/99281844/1b5d82e5-1719-4550-80ea-b91e57154bff" width="550">

It is evident from the first two images that it is unable to recognize Arabic license plates. The second 
image was manipulated by removing Arabic alphanumeric, which led to better recognition of characters 
in the third image.

## Reference 
[1] Patel, C., Shah, D., & Patel, A. (2013). Automatic number plate recognition system (anpr): A 
survey. International Journal of Computer Applications, 69(9).

Vehicle Number Plate Detection Using MATLAB and Image Processing:  
https://circuitdigest.com/tutorial/vehicle-number-plate-detection-using-matlab-and-image-processing

## Credits
This project was created by Ahad Alsulami (me) and Reema Albishri as part of Image Processing Course at University of Jeddah.
