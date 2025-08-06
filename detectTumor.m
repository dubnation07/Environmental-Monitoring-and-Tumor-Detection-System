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

function [ hasTumor ] = detectTumor( brain )
    %detectTumor Returns whether or not a tumor was found in the image.
    %     brain: a matrix of numbers representing a grayscale image of a 
    %            brain scan. Bright areas may be tumors and need to
    %            be flagged for further testing.
    %            To get test data for this function, you may call the
    %            provided scan_brain() function and pass the value it
    %            returns into this function. However, DO NOT call
    %            scan_brain() in the code for this function itself.

    % TODO your code here
    
    %Uses the Remove Noise function on the brain scan.
    brainNoise = removeNoise(brain, 15);
    
    %An arbitrary value for what the value of a tumor should be.
    tumorColor = 0.6;

    %A vector of all the values in the image that satisfy the condition.
    tumors = brainNoise > tumorColor;

    %The minimum number of values that meet the condition for the scan to
    %be considered a positive test.
    threshold = 200;

    %The number of values that meet the condition.
    numberOfTumors = sum(sum(tumors));

    hasTumor = numberOfTumors > threshold;

    
end

