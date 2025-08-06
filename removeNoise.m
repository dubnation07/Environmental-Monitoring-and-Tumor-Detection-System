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

function [ rad ] = removeNoise( rad, n )
    %removeNoise Removes noise from a matrix of radiation values by
    %  applying an nxn mean filter three times.
    %       n: The size of the filter (e.g. if n=3, use a 3x3 filter)
    %     rad: a matrix of numbers representing the radiation
    %          measurements from the scanner.
    %          NOTE: A matrix obtained from a call to the scan_radiation()
    %          may be used as an input argument when calling this function,
    %          but you should NOT call scan_radiation() inside of this
    %          function!

    % TODO your code here

    % Each line of code performs the imfilter function and saves the
    % filtered image into a new varibale. This is done 3 times.
    img1 = imfilter(rad, ones(n).*1/(n^2), 'replicate'); 
    img2 = imfilter(img1, ones(n).*1/(n^2), 'replicate');
    rad = imfilter(img2, ones(n).*1/(n^2), 'replicate');
end