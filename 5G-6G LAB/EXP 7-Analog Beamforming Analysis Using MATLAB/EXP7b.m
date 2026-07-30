clc;
clear;
close all;
antennas = [2 4 8 16 32]; % Number of Antenna Elements
beamwidth = [90 45 22.5 11.25 5.625]; % Beam Width (degrees)
figure
plot(antennas, beamwidth,'o-','LineWidth',2)
grid on
xlabel('Number of Antenna Elements')
ylabel('Beam Width (Degrees)')
title('Beam Width for Different Antenna Array Sizes')