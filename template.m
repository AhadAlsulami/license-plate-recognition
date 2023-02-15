% In this file we will upload the alphanumerics images

% Letters
A=imread('alphanumeric/A.bmp');
B=imread('alphanumeric/B.bmp');
C=imread('alphanumeric/C.bmp');
D=imread('alphanumeric/D.bmp');
E=imread('alphanumeric/E.bmp');
F=imread('alphanumeric/F.bmp');
G=imread('alphanumeric/G.bmp');
H=imread('alphanumeric/H.bmp');
I=imread('alphanumeric/I.bmp');
J=imread('alphanumeric/J.bmp');
K=imread('alphanumeric/K.bmp');
L=imread('alphanumeric/L.bmp');
M=imread('alphanumeric/M.bmp');
N=imread('alphanumeric/N.bmp');
O=imread('alphanumeric/O.bmp');
P=imread('alphanumeric/P.bmp');
Q=imread('alphanumeric/Q.bmp');
R=imread('alphanumeric/R.bmp');
S=imread('alphanumeric/S.bmp');
T=imread('alphanumeric/T.bmp');
U=imread('alphanumeric/U.bmp');
V=imread('alphanumeric/V.bmp');
W=imread('alphanumeric/W.bmp');
X=imread('alphanumeric/X.bmp');
Y=imread('alphanumeric/Y.bmp');
Z=imread('alphanumeric/Z.bmp');

% Numbers
one=imread('alphanumeric/1.bmp');
two=imread('alphanumeric/2.bmp');
three=imread('alphanumeric/3.bmp');
four=imread('alphanumeric/4.bmp');
five=imread('alphanumeric/5.bmp');
six=imread('alphanumeric/6.bmp');
seven=imread('alphanumeric/7.bmp');
eight=imread('alphanumeric/8.bmp');
nine=imread('alphanumeric/9.bmp');
zero=imread('alphanumeric/0.bmp');

% Create Arrays to store the images
letter=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
number=[one two three four five six seven eight nine zero];

% Saves all the variables from the current workspace
NewTemplates=[letter number];
save ('NewTemplates','NewTemplates')
clear all