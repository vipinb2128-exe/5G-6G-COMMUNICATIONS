clc;
clear;
close all;
slices = {'eMBB','URLLC','mMTC','Private','IoT'};
count = [1 1 1 1 1]; % One instance of each network slice
figure
bar(count)
grid on
set(gca,'XTickLabel',slices)
xlabel('Network Slice Type')
ylabel('Number of Network Slices')
title('Number of Configured 5G Network Slices')