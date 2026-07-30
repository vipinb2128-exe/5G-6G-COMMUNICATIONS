clc; clear; close all;
% Simulated soil moisture (%)
time = 1:10;
soil_moisture = [30 35 28 25 20 18 22 30 40 45];
% Threshold level
threshold = 40;
% Pump control logic (1 = ON, 0 = OFF)
pump_status = soil_moisture < threshold;
figure
% -------- Graph 1: Soil Moisture vs Pump Status --------
subplot(2,1,1)
plot(time, soil_moisture, '-o','LineWidth',2)
title('Soil Moisture vs Pump Control')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold,'r--','Threshold')

% -------- Graph 2: Pump Status (ON/OFF) --------
subplot(2,1,2)
stem(time, pump_status, 'filled','LineWidth',2)
title('Water Pump Status (1=ON, 0=OFF)')
xlabel('Time (Hours)')
ylabel('Pump Status')
grid on