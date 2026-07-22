clc; clear; close all;
fs=1000; t=0:1/fs:1;
TBW=600; Users=3;
CBW=TBW/Users;
fc=[100 300 500];
m=sin(2*pi*10*t);
s1=m.*cos(2*pi*fc(1)*t);
s2=m.*cos(2*pi*fc(2)*t);
s3=m.*cos(2*pi*fc(3)*t);

subplot(2,1,1)
plot(t,s1,'r',t,s2,'g',t,s3,'b'),grid on
title('FDMA Channel Allocation'),xlabel('Time(s)'),ylabel('Amplitude')

subplot(2,1,2)
bar(1:Users,CBW*ones(1,Users)),grid on
xlabel('Users'),ylabel('Channel Bandwidth (kHz)'),title('Channel Bandwidth per User')