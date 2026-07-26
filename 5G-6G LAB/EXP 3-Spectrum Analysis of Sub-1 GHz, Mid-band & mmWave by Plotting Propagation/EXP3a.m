clc; clear; close all;

d = 0.1:0.1:5; % Distance (km)
f = [900 3500 28000]; % Frequency (MHz)
PL1 = 32.44 + 20*log10(f(1)) + 20*log10(d);
PL2 = 32.44 + 20*log10(f(2)) + 20*log10(d);
PL3 = 32.44 + 20*log10(f(3)) + 20*log10(d);
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(d,PL1,'b','LineWidth',2); hold on
plot(d,PL2,'r','LineWidth',2)
plot(d,PL3,'k','LineWidth',2)
title('Propagation Loss vs Distance')
xlabel('Distance (km)')
ylabel('Loss (dB)')
grid on
% -------- Graph 2 (NO legend used to avoid error) --------
subplot(2,1,2)
Freq = [900 3500 28000];
Loss = [PL1(10) PL2(10) PL3(10)];
plot(Freq,Loss,'-o','LineWidth',2)
title('Propagation Loss vs Frequency')
xlabel('Frequency (MHz)')
ylabel('Loss (dB)')
grid on