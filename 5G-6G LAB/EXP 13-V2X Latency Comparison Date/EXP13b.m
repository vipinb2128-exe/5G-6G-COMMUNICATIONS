clc;
clear;
close all;
% Vehicle Speed (km/h)
speed = 20:20:120;
% Simulated Packet Delivery Ratio (%)
PDR = [99 98 97 95 93 90];
disp('Vehicle Speed (km/h) Packet Delivery Ratio (%)')
disp([speed' PDR'])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(speed,PDR,'-o','LineWidth',2)
title('Vehicle Speed vs Packet Delivery Ratio')
xlabel('Vehicle Speed (km/h)')
ylabel('Packet Delivery Ratio (%)')
grid on

% -------- Graph 2 --------
subplot(2,1,2)
plot(1:length(PDR),PDR,'-s','LineWidth',2)
title('Packet Delivery Ratio Across Vehicles')
xlabel('Vehicle Index')
ylabel('Packet Delivery Ratio (%)')
grid on