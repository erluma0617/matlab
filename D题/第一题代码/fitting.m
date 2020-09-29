%PM2.5�����ָ�����λع����
clc;
clear;
close all;

%��������
data=xlsread('�人.xls');
PM2_5=data(:,6);
SO2=data(:,1);
NO2=data(:,2);
PM10=data(:,3);
CO=data(:,4);
O3=data(:,5);

%���
A=polyfit(SO2,PM2_5,3)   %PM2_5,SO2���
SO2=data(:,1);
A1=polyval(A,SO2);
plot(SO2,PM2_5,'o',SO2,A1,'*')
xlabel("SO2");
ylabel("PM2.5");
title("PM2.5��SO2���");
figure;

B=polyfit(NO2,PM2_5,3)   %PM2_5,NO2���
NO2=data(:,2);
B1=polyval(B,NO2);
plot(NO2,PM2_5,'o',NO2,B1,'*')
xlabel("NO2");
ylabel("PM2.5");
title("PM2.5��NO2���");
figure;

C=polyfit(PM10,PM2_5,3)   %PM2_5,PM10���
PM10=data(:,3);
C1=polyval(C,PM10);
plot(PM10,PM2_5,'o',PM10,C1,'*')
xlabel("PM10");
ylabel("PM2.5");
title("PM2.5��PM10���");
figure;


D=polyfit(CO,PM2_5,3)   %PM2_5,CO���
CO=data(:,4);
D1=polyval(D,CO);
plot(CO,PM2_5,'o',CO,D1,'*')
xlabel("CO");
ylabel("PM2.5");
title("PM2.5��CO���");
figure;


E=polyfit(O3,PM2_5,3)   %PM2_5,O3���
O3=data(:,5);
E1=polyval(E,O3);
plot(O3,PM2_5,'o',O3,E1,'*')
xlabel("����");
ylabel("PM2.5");
title("PM2.5��������");


