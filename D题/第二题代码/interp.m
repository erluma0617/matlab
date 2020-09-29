%一维插值
clear;
close all;
clc;

data=xlsread('各区pm2.5.xlsx');
x=1:116;
local={'空','高压开关厂','兴庆小区','纺织城'	,'小寨','市人民体育场','高新区','经开区','长安区','阎良区','临潼区','曲江文化集团','广运潭','草潭','全市平均'};
for ii =2:15
    y=data(:,ii);
    t=1:0.1:116;
    p=interp1(x,y,t,'spline');
    plot(x,y,'o',t,p,'r','LineWidth',1.5)
    legend('观测数据','插值曲线');
    ylabel('PM2.5浓度');
    xlabel('时间');
    title(local(ii));
    figure;
end