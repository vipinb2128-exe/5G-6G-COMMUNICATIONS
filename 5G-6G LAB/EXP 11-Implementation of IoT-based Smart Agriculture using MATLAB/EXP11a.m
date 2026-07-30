clc; clear; close all;
% Simulated soil moisture data (%)
time = 1:10;
soil_moisture = [30 35 28 25 20 18 22 30 40 45];
% Threshold for irrigation
threshold = 40;
figure
% -------- Graph 1: Soil Moisture Variation --------
subplot(2,1,1)
plot(time, soil_moisture, '-o', 'LineWidth', 2)
title('Soil Moisture Monitoring in IoT Smart Agriculture')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold,'r--','Threshold')
% -------- Graph 2: Moisture Status (Dry/Wet Level) --------
status = soil_moisture >= threshold;
subplot(2,1,2)
stem(time, status, 'filled', 'LineWidth', 2)
title('Soil Condition Status (1=Wet, 0=Dry)')
xlabel('Time (Hours)')
ylabel('Status')
grid on