%PM2.5与各项指标三次回归拟合
clc;
clear;
close all;

%导入数据
data=xlsread('武汉.xls');
PM2_5=data(:,6);
SO2=data(:,1);
NO2=data(:,2);
PM10=data(:,3);
CO=data(:,4);
O3=data(:,5);

%拟合
A=polyfit(SO2,PM2_5,3)   %PM2_5,SO2拟合
SO2=data(:,1);
A1=polyval(A,SO2);
plot(SO2,PM2_5,'o',SO2,A1,'*')
xlabel("SO2");
ylabel("PM2.5");
title("PM2.5与SO2拟合");
figure;

B=polyfit(NO2,PM2_5,3)   %PM2_5,NO2拟合
NO2=data(:,2);
B1=polyval(B,NO2);
plot(NO2,PM2_5,'o',NO2,B1,'*')
xlabel("NO2");
ylabel("PM2.5");
title("PM2.5与NO2拟合");
figure;

C=polyfit(PM10,PM2_5,3)   %PM2_5,PM10拟合
PM10=data(:,3);
C1=polyval(C,PM10);
plot(PM10,PM2_5,'o',PM10,C1,'*')
xlabel("PM10");
ylabel("PM2.5");
title("PM2.5与PM10拟合");
figure;


D=polyfit(CO,PM2_5,3)   %PM2_5,CO拟合
CO=data(:,4);
D1=polyval(D,CO);
plot(CO,PM2_5,'o',CO,D1,'*')
xlabel("CO");
ylabel("PM2.5");
title("PM2.5与CO拟合");
figure;


E=polyfit(O3,PM2_5,3)   %PM2_5,O3拟合
O3=data(:,5);
E1=polyval(E,O3);
plot(O3,PM2_5,'o',O3,E1,'*')
xlabel("臭氧");
ylabel("PM2.5");
title("PM2.5与臭氧拟合");


