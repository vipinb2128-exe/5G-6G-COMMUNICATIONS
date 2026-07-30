clc;
clear;
close all;
% Vehicle IDs
vehicle = 1:6;
% Vehicle Speed (km/h)
speed = [30 45 60 75 90 105];
% Communication Range (m)
range = [280 260 240 220 200 180];
disp('Vehicle Speed(km/h) Communication Range(m)')

disp([vehicle' speed' range'])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(vehicle,speed,'-o','LineWidth',2)
title('Vehicle Speed of Different Vehicles')
xlabel('Vehicle Index')
ylabel('Vehicle Speed (km/h)')
grid on
% -------- Graph 2 --------
subplot(2,1,2)
plot(speed,range,'-s','LineWidth',2)
title('Vehicle Speed vs Communication Range')
xlabel('Vehicle Speed (km/h)')
ylabel('Communication Range (m)')
grid on