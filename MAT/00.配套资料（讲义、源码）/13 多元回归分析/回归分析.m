x=[0.1:0.01:0.18];
y=[42 41.5 45 45.5 45 47.5 49 55 50];
rstool(x',y','linear',0.05)%����ʽ�ع����
%model��Ϊlinear�����ԣ�purequadratic�������Σ�interaction�����棩quadratic����ȫ���Σ�

%'linear' ����ʾ���������������һ��� 
%'purequadratic'����ʾ���������һ����Ͷ���� 
%'interaction'����ʾ���������һ����ͽ���� 
%'quadratic'��ʾ����������Ͷ�����




%��������data
x1=data(:,1);
x2=data(:,2);
x3=data(:,3);
x4=data(:,4);
y=data(:,end);
stepwise([x1,x2,x3,x4],y)%�𲽷�����˳�㿴���ݵ���ȷ��



x=[0.1:0.01:0.18];
y=[42 41.5 45 45.5 45 47.5 49 55 50];
plot��x��y��
a=polyfit(x,y,1);
c=polyval(a,x);
%�����Ǽ���
[b,bint,r,rint,stats]=regress(c',[ones(size(x))',x'])
rcoplot(r,rint)%�����ݵ���ȷ��