clc;
clear;
close all;

antennas = [4 8 16 32 64];
gain = 10*log10(antennas); 

figure
bar(antennas, gain)
grid on
xlabel('Number of Antenna Elements')
ylabel('Antenna Gain (dB)')
title('Antenna Gain for Different Antenna Array Sizes')