clc; clear; close all;
% Frequency bands (MHz)
f = [900 3500 28000];
% Distance (km)
d = 2;
% Propagation Loss (FSPL)
PL = 32.44 + 20*log10(f) + 20*log10(d);
figure
% -------- Graph 1: Simple Line Plot (SAFE) --------

subplot(2,1,1)
plot(f, PL, '-o', 'LineWidth', 2)
title('Propagation Loss vs Operating Frequency')
xlabel('Frequency (MHz)')
ylabel('Propagation Loss (dB)')
grid on
% -------- Graph 2: Safe Comparison Plot --------
subplot(2,1,2)
plot(1:3, PL, '-s', 'LineWidth', 2)
title('Band-wise Propagation Loss Comparison')
xlabel('Band Index (1=Sub1GHz, 2=Mid-band, 3=mmWave)')
ylabel('Propagation Loss (dB)')
grid on