%% BME 848L - OCT Processing
% Shane Solomon Neibart
% 3/1/16

%% Start
clear; close all; clc;

%% Load Parameters
[C, p] = loadParams();

%% Load Data
[Raw_21, BG_21] = loadData(21);

%% Background Subtraction
BGS_Image_21 = bgSubtract(Raw_21,BG_21);

%% Wavelength Calibration
LambdaP = C(1) + C(2).*p + C(3).*p.^2 + C(4).*p.^3;

%% Resampling Lambda to Wavenumber
k = (2*pi)./LambdaP;

%% Dispersion Compensation
E2 = 10;
E3 = 10;
DC_Image_21 = dispersionComp(E2,E3,BGS_Image_21);

