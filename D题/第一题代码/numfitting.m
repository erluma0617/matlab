%��Ԫ���Իع�
clc;
%clear;
close all;

%��������
%data=xlsread('�人.xls');
PM2_5=data(:,6);
SO2=data(:,1);
NO2=data(:,2);
PM10=data(:,3);
CO=data(:,4);
O3=data(:,5);

%��Ԫ�ع�
Y=PM2_5;
X=[ones(size(SO2)),SO2,NO2,PM10,CO,O3];
[b,bint,r,rint,stats]=regress(Y,X);
b %b�����Է��̵�ϵ������ֵ�����ҵ�һֵ��ʾ�������ڶ���ֵ��ʾ�ع�ϵ��
bint; %bint��ϵ������ֵ�����Ŷ�Ϊ95������������
r; %r��ʾ�в�
rint; %rint��ʾ���в����������
stats %stats�����ڼ���ع�ģ�͵�ͳ��������������ֵ�����б�ʾ�ع��R^2,F�Լ������Ը���Pֵ��alphaΪ���Ŷȡ�
      %���ϵ��r^2Խ��˵���ع鷽��Խ��������F��Ӧ�ĸ���P<alphaʱ��ܾ�H0���ع�ģ�ͳ�����
rcoplot(r,rint)

