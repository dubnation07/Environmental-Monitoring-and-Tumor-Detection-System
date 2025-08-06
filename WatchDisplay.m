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


%% Driver program for smartwatch display

% TODO your code here
clear

%Read the image into a variable 'img'
img = imread('dome_area.jpg');


%% Get GPS data from user
% Note: For testing, use the following values
%   - row 622
%   - colum 942 
%   - time 935
% After you verify that you can create the sample images from the 
% project specs, then use the values returned by the GPS_data() function.

% TODO your code here

%Define variables matching the return variables of GPS_data()
[r, c, t] = GPS_data();

%Obtain rad values and Remove Noise
rad = scan_radiation(t);
rad = removeNoise(rad, 15);
%% Get display settings
% Note: For testing, use a zoom offset value of 173
% After you verify that you can create the sample images from the 
% project specs, then use the values returned by the displaySettings() 
% function.

% TODO your code here

%zoom offset value
z = display_settings();

%Uses made functions to generate new images
imgHeat = heatmap(img, rad);
imgZones = zones(img, rad);

%Uses the offset to calculate what are of the images will remain after
%being cropped.
imgHeatLocal = imgHeat(r-z:r+z, c-z:c+z,:);
imgZonesLocal = imgZones(r-z:r+z, c-z:c+z,:);
%% Create the heatmap_local.png and zones_local.png images
% See the project spec for details.

% TODO your code here
imwrite(imgHeatLocal, 'heatmap_local.png');
imwrite(imgZonesLocal, 'zones_local.png');
