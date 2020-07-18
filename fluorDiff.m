% Written for the Tanentzapf Lab, University of British Columbia, 2020
% Author: Rosalyn Carr
clear all; close all

stains = {'Red', 'Green', 'Blue'}; %% stains
[stain, ~] = listdlg('PromptString', 'Pick Stain Colour', 'ListString', stains);

baselinePath = uigetfile('*tif', 'Baseline Image');
baseline = imread(baselinePath);
baseline = baseline(:,:,stain); %% read in baseline image w/ stain

prestimPath = uigetfile('*tif', 'Pre-Stim Image');
prestim = imread(prestimPath);
prestim = prestim(:,:,stain); %% read in prestim image w/ stain

poststimPath = uigetfile('*tif', 'Post-Stim Image');
poststim = imread(poststimPath);
poststim = poststim(:,:,stain); %% read in poststim image w/ stain

lowIn = inputdlg('Enter Lower Calibration');
low = str2double(lowIn); %% lower calibration limit (recommend 0-30)
highIn = inputdlg('Enter Higher Calibration');
high = str2double(highIn); %% upper calibration limit (recommend 60-100)

preTransform = (prestim - baseline); %% difference image
postTransform = (poststim - baseline); %% difference image

figure('name', 'Pre-Stim Difference') %% can save from figure window
imshow(preTransform)
colormap(gca, jet) %% use of gca to allow colourmap on imshow for 2016+
colorbar('Location', 'eastoutside'); %% calibration to right side out
caxis([low high]) %% manual set calibration

figure('name', 'Post-Stim Difference') %% can save from figure window
imshow(postTransform)
colormap(gca, jet) %% use of gca to allow colourmap on imshow for 2016+
colorbar('Location', 'eastoutside'); %% calibration to right side out
caxis([low high]) %% manual set calibration