clc;
clear;
close all;
% Vehicle Speed (km/h)
speed = 20:20:120;
% Simulated End-to-End Latency (ms)
latency = [18 16 14 12 10 9];
disp('Vehicle Speed (km/h) End-to-End Latency (ms)')
disp([speed' latency'])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(speed,latency,'-o','LineWidth',2)
title('Vehicle Speed vs End-to-End Latency')
xlabel('Vehicle Speed (km/h)')
ylabel('Latency (ms)')
grid on
% -------- Graph 2 --------
subplot(2,1,2)
plot(1:length(latency),latency,'-s','LineWidth',2)
title('Latency Variation Across Vehicles')
xlabel('Vehicle Index')
ylabel('End-to-End Latency (ms)')
grid on