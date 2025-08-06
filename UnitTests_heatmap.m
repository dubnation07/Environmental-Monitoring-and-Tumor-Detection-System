%% TEST 1: heatmap for hour 30 with 15x15 filter

% read in the dome area image
img = imread('dome_area.jpg');

% use hour 30
h = 30; 

% get the radiation data from hour 30
rad = scan_radiation(h); 

% smooth out data using a 15x15 filter; replace old, noisy data with new, smoothed
% data returned by the removeNoise function
rad = removeNoise(rad, 15);
 
% create the heatmap image
img_heatmap = heatmap(img, rad);

% show the heatmap image
figure(2);
imshow(img_heatmap);

% Display a nice message about this test case in the Command Window
disp("Test 1:");
disp("Result from calling heatmap is show in the Figure 2 window.");
disp("Look at the figure and compare to the example show in the project specs.");
disp("-------------------"); % prints a line to help separate the test cases.
                             % this isn't necessary, just helpful for
                             % humans when we're reading the output!
                             
                             