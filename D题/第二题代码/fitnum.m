clc;
%clear;
close all;

%��������
data=xlsread('Ӱ������.xlsx');
PM2_5=data(:,5);
tempe=data(:,1);
wind=data(:,2);
wet=data(:,3);
season=data(:,4);

%��Ԫ�ع�
Y=PM2_5;
X=[ones(size(tempe)),tempe,wind,wet,season];
[b,bint,r,rint,stats]=regress(Y,X);
b %b�����Է��̵�ϵ������ֵ�����ҵ�һֵ��ʾ�������ڶ���ֵ��ʾ�ع�ϵ��
bint; %bint��ϵ������ֵ�����Ŷ�Ϊ95������������
r; %r��ʾ�в�
rint; %rint��ʾ���в����������
stats %stats�����ڼ���ع�ģ�͵�ͳ��������������ֵ�����б�ʾ�ع��R^2,F�Լ������Ը���Pֵ��alphaΪ���Ŷȡ�
      %���ϵ��r^2Խ��˵���ع鷽��Խ��������F��Ӧ�ĸ���P<alphaʱ��ܾ�H0���ع�ģ�ͳ�����
rcoplot(r,rint)