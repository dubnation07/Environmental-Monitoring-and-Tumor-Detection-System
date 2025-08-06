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

function [ img ] = heatmap( img, rad )
    %heatmap Generates a heatmap image by using values from rad to set
    %  values in the hue channel for img. Hue values vary smoothly
    %  depending on the corresponding radiation level.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    % TODO your code here

    %Converts the RGB to HSV
    imgHSV = rgb2hsv(img);

    %Extracts the hue and saturation values and
    %Assigns the hue and the saturation to new values.

    imgHSV(: , :, 1) = (0.7)-((0.7.*rad)./100.0);
    imgHSV(: , :, 2) = 1;
 
    %Converts the HSV back into RGB
    img = hsv2rgb(imgHSV);
end

