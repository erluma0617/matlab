%һά��ֵ
clear;
close all;
clc;

data=xlsread('����pm2.5.xlsx');
x=1:116;
local={'��','��ѹ���س�','����С��','��֯��'	,'Сկ','������������','������','������','������','������','������','�����Ļ�����','����̶','��̶','ȫ��ƽ��'};
for ii =2:15
    y=data(:,ii);
    t=1:0.1:116;
    p=interp1(x,y,t,'spline');
    plot(x,y,'o',t,p,'r','LineWidth',1.5)
    legend('�۲�����','��ֵ����');
    ylabel('PM2.5Ũ��');
    xlabel('ʱ��');
    title(local(ii));
    figure;
end