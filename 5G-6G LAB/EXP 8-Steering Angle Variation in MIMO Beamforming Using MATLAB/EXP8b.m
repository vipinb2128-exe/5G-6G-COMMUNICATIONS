clc;
clear;
close all;
angle = [-60 -30 0 30 60]; % Steering Angles (degrees)
gain = [9 12 15 12 9]; % Array Gain (dB)
figure
bar(angle, gain)
grid on
xlabel('Steering Angle (Degrees)')
ylabel('Array Gain (dB)')
title('Array Gain for Different Steering Angles')