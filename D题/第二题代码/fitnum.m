clc;
%clear;
close all;

%导入数据
data=xlsread('影响因素.xlsx');
PM2_5=data(:,5);
tempe=data(:,1);
wind=data(:,2);
wet=data(:,3);
season=data(:,4);

%多元回归
Y=PM2_5;
X=[ones(size(tempe)),tempe,wind,wet,season];
[b,bint,r,rint,stats]=regress(Y,X);
b %b是线性方程的系数估计值，并且第一值表示常数，第二个值表示回归系数
bint; %bint是系数估计值的置信度为95％的置信区间
r; %r表示残差
rint; %rint表示各残差的置信区间
stats %stats是用于检验回归模型的统计量，有三个数值其中有表示回归的R^2,F以及显著性概率P值，alpha为置信度。
      %相关系数r^2越大，说明回归方程越显著；与F对应的概率P<alpha时候拒绝H0，回归模型成立。
rcoplot(r,rint)