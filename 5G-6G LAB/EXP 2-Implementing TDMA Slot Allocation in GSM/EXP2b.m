clc; clear; close all;
TotalSlots = 8;
AllocatedSlots = 6;
FreeSlots = TotalSlots - AllocatedSlots;

Utilization = (AllocatedSlots/TotalSlots)*100;
disp('Frame Utilization (%)')
disp(Utilization)
figure
% Graph 1: Simple Line Plot (SAFE - no bar function)
subplot(2,1,1)
plot([1 2],[AllocatedSlots FreeSlots],'-o','LineWidth',2)
title('GSM Frame Utilization (Allocated vs Free)')
xlabel('Slot Type Index (1=Allocated, 2=Free)')
ylabel('Number of Slots')
grid on-
% Graph 2: Pie Chart (SAFE)
subplot(2,1,2)
pie([AllocatedSlots FreeSlots])
title('Slot Distribution in GSM Frame')
legend('Allocated','Free')