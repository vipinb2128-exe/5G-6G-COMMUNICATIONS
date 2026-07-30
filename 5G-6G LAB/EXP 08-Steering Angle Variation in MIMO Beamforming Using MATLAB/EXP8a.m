clc;
clear;
close all;
angle = [-60 -30 0 30 60]; % Steering Angles (degrees)
gain = ones(size(angle)); % Normalized Gain
figure
polarplot(deg2rad(angle), gain,'o-','LineWidth',2)
title('Steering Angle Variation in MIMO Beamforming')