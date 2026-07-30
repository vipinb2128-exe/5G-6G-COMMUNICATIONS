clc;
clear;
close all;
theta = [-60 -30 0 30 60]; % Main Lobe Direction (degrees)
gain = [1 1 1 1 1]; % Constant normalized gain
figure
polarplot(deg2rad(theta), gain, 'o', 'LineWidth', 2)
title('Main Lobe Direction in Analog Beamforming')