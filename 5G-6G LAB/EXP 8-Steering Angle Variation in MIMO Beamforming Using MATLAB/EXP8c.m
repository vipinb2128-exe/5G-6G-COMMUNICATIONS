clc;
clear;
close all;

desired = [-60 -30 0 30 60];
actual = [-58 -32 1 29 62];

error = abs(desired - actual);

figure
plot(desired, error, 'o-', 'LineWidth', 2)
grid on
xlabel('Desired Steering Angle (Degrees)')
ylabel('Beam Direction Error (Degrees)')
title('Beam Direction Error for Different Steering Angles')