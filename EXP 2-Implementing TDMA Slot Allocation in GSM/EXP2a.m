clc; clear; close all;
FrameTime = 4.615; Slots = 8;
SlotDuration = FrameTime/Slots;

t = 0:SlotDuration:FrameTime;
figure
subplot(2,1,1)
stem(t,ones(size(t)),'filled')
title('TDMA Time Slot Structure')
xlabel('Time (ms)')
ylabel('Slot Level')
grid on
subplot(2,1,2)
plot(t,ones(size(t)),'-o','LineWidth',1.5)
title('Continuous View of Slot Allocation')
xlabel('Time (ms)')
ylabel('Slot Presence')
grid on