clc;
clear;
close all;

%��������
data=xlsread('Ӱ������.xlsx');
PM2_5=data(:,5);
tempe=data(:,1);
wet=data(:,3);
season=data(:,4);
%���
A=polyfit(tempe,PM2_5,3)   
tempe=data(:,1);
A1=polyval(A,tempe);
plot(tempe,PM2_5,'o',tempe,A1,'*')
xlabel("tempe");
ylabel("PM2.5");
title("PM2.5���¶����");
figure;
B=polyfit(wet,PM2_5,1)   %PM2_5,NO2���
wet=data(:,3);
B1=polyval(B,wet);
plot(wet,PM2_5,'o',wet,B1,'*')
xlabel("wet");
ylabel("PM2.5");
title("PM2.5��ʪ�����");
figure;

C=polyfit(season,PM2_5,1)   %PM2_5,PM10���
season =data(:,4);
C1=polyval(C,season);
plot(season,PM2_5,'o',season,C1,'*')
xlabel("season");
ylabel("PM2.5");
title("PM2.5�뼾�����");

