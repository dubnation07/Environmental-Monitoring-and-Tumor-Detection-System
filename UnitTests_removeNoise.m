%% TEST 1: hour 30 with 15x15 filter

% use hour 30
h = 30; 

% get the radiation data from hour 30
rad = scan_radiation(h); 

% smooth out data using a 15x15 filter; replace old, noisy data with new, smoothed
% data returned by the removeNoise function
rad = removeNoise(rad, 15);
 
% display a visual of the smoothed radiation data
figure(1);
imshow(rad ./ 100);

% Display a nice message about this test case in the Command Window
disp("Test 1:");
disp("Result from calling removeNoise is show in the Figure 1 window.");
disp("Look at the figure and compare to the example show in the project specs.");
disp("-------------------"); % prints a line to help separate the test cases.
                             % this isn't necessary, just helpful for
                             % humans when we're reading the output!
                             
                             