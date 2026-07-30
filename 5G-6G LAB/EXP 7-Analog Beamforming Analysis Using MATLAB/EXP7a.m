clc;
clear;
close all;
antennas = [2 4 8 16 32]; % Number of Antenna Elements
gain = 10*log10(antennas); % Beamforming Gain (dB)
figure
bar(antennas, gain)
grid on
xlabel('Number of Antenna Elements')
ylabel('Beamforming Gain (dB)')
title('Beamforming Gain for Different Antenna Array Sizes')