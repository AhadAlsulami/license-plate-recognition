% **  License Plate Recognition ** 
% In this file we will process and detect the image and recognize the alphanumerics

% - Plate Detection -
[FileName,PathName]=uigetfile('*.png');
imageRGB = imread([PathName,FileName]);
imageGray=rgb2gray(imageRGB);        % converts RGB image to Gray
imageBinary=imbinarize(imageGray);   % creates a binary image
image=edge(imageGray, 'prewitt');    % detect image edge

% Find the location of license plate in car
imageProps=regionprops(image,'BoundingBox','Area', 'Image'); % measure properties of image region
area=imageProps.Area;
count=numel(imageProps); % returns the number of elements in array
maxArea=area;
boundingBox = imageProps.BoundingBox;

for i=1:count
   if maxArea<imageProps(i).Area
       maxArea=imageProps(i).Area;
       boundingBox=imageProps(i).BoundingBox;
   end
end   

% Crop the image (license plate)
imageCrop=imcrop(imageBinary,boundingBox);
imageClean=bwareaopen(~imageCrop, 300); % remove small details from binary image
[height, weight]=size(imageClean);
imshow(imageClean);


% Process the cropped image and display the detected number
imagePropsC=regionprops(imageClean,'BoundingBox','Area', 'Image');
count = numel(imagePropsC);
License_Plate=[];

for i=1:count
   w = length(imagePropsC(i).Image(1,:));
   h = length(imagePropsC(i).Image(:,1));
   if w<(height/2) & h>(height/3)
       letter=readLetter(imagePropsC(i).Image); % read the letter that corresponds the binary image
       License_Plate=[License_Plate letter]
   end
end

% - Alphanumeric Recognition -
function letter=readLetter(img) % create function that read the letters
load NewTemplates               % loading the template we saved in tamplate.m
img=imresize(img,[42 24]);      % resizing the input image
record=[ ];                     % record the value of correlation for each alphanumeric

% Correlates the input image with every image in the alphanumeric.m file for best matching.
for n=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,n},img); 
    record=[record cor]; 
end

% Find the index which corresponds to the highest match
ind=find(record==max(record));
display(ind);

% Index assign to the letter
letters = 'AABBCDDEFGHIJKLMNOOPPQQRRSTUVWXYZ1234456667889990'; % repeat characters if there is "hole" in them
if ind > length(letters)
    letter = '0';
else
    letter = letters(ind);
end
end