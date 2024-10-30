% displaySoilImage - Displays an image of the specified soil type.
%
% This function takes a soil name as an input parameter, constructs
% the file path to an image file located in a directory called "Soils"
% with the same name as the soil type, and displays the image using
% MATLAB's imshow function. If the image file does not exist, it will 
% display an error message indicating that the image was not found.
%
% Syntax: displaySoilImage(soilName)
%
% Input:
%   soilName - A string representing the name of the soil type (e.g., 'sand').

function displaySoilImage(soilName)
    directory = 'soils';
    fileName = [soilName, '.png'];t
    filePath = fullfile(directory, fileName);
    
    if isfile(filePath)
        img = imread(filePath);
        imshow(img);
        title(upper(soilName)); 
    else
        disp(['Image for "', soilName, '" not found in "', directory, '".']);
    end
end
