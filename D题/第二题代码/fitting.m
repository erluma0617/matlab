clc;
clear;
close all;

%导入数据
data=xlsread('影响因素.xlsx');
PM2_5=data(:,5);
tempe=data(:,1);
wet=data(:,3);
season=data(:,4);
%拟合
A=polyfit(tempe,PM2_5,3)   
tempe=data(:,1);
A1=polyval(A,tempe);
plot(tempe,PM2_5,'o',tempe,A1,'*')
xlabel("tempe");
ylabel("PM2.5");
title("PM2.5与温度拟合");
figure;
B=polyfit(wet,PM2_5,1)   %PM2_5,NO2拟合
wet=data(:,3);
B1=polyval(B,wet);
plot(wet,PM2_5,'o',wet,B1,'*')
xlabel("wet");
ylabel("PM2.5");
title("PM2.5与湿度拟合");
figure;

C=polyfit(season,PM2_5,1)   %PM2_5,PM10拟合
season =data(:,4);
C1=polyval(C,season);
plot(season,PM2_5,'o',season,C1,'*')
xlabel("season");
ylabel("PM2.5");
title("PM2.5与季节拟合");

