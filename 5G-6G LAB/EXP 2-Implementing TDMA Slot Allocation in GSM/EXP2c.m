clc; clear; close all;

Users = 1:8; % Total users
TotalSlots = 5; % Available slots
Alloc = zeros(1,8); % Initialize allocation
Alloc(1:TotalSlots) = 1; % Assign slots to first users
Blocked = 1 - Alloc; % Remaining users blocked

disp('User Wise Slot Allocation (1=Allocated, 0=Blocked)')
% FIXED: Closed the disp() function properly and simplified the variable name
disp(table(Users', Alloc', 'VariableNames', {'User', 'Status'}))

figure; % FIXED: Placed on its own line

% Graph 1: Allocation per user
subplot(2,1,1)
stem(Users, Alloc, 'filled', 'LineWidth', 2)
title('TDMA Slot Allocation per User')
xlabel('User Index')
ylabel('Slot Status (1=Allocated, 0=Blocked)')
ylim([-0.2 1.2])
grid on

% Graph 2: System view 
subplot(2,1,2)
plot(Users, Alloc, '-o', 'LineWidth', 2)
hold on
plot(Users, Blocked, '-s', 'LineWidth', 2)
title('TDMA Slot Utilization Analysis')
xlabel('User Index')
ylabel('Status')
legend('Allocated', 'Blocked')
grid on