% Chimdubem Duruji 
% "none" 
% 022 
% 02/11/2025

%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% 72a7eabf-94c8-4b11-8c2c-751f9693133d
%------------------------------------------------------

function [ img ] = zones( img, rad )
    %zones Generates an image colored according to radiation threat 
    %  zones. Values from rad are used to determine the zone, and the hue
    %  value in img is set accordingly.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background for
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    % TODO your code here
    
    %Converts the image into HSV format
    imgHSV = rgb2hsv(img);

    %Extract the hue value
    hue = imgHSV(:,:,1);

    %Give the hue a new value depending on the condition met by the
    %radiation values.
    hue(rad>=0 & rad<20) = 0.6;
    hue(rad>=20 & rad<50) = 0.4;
    hue(rad>=50 & rad<70) = 0.2;
    hue(rad>=70 & rad<90) = 0.1;
    hue(rad>=90) = 0;

    %Assign the new hue and saturation values
    imgHSV(:,:,1) = hue;
    imgHSV(:,:,2) = 1;

    %Convert the HSV back into RGB format
    img = hsv2rgb(imgHSV);
end

