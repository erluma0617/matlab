
clc;
clear ;
 
[x,y]=meshgrid(-8.2:0.1:25.1,-12.4:0.1:43.6);
%x=[-6.1 2.8 9.7 -0.7 0 -6.2 -1.5 -4.4 25.1 23.8 2.1 9.1 -8.2];
%y=[-0.33 -1.2 -0.425 -5.2 0,2 -1.5 -12.4 43.6 10.8 -6.7 5 11];
%x1=x+6.1;
%y1=y+0.33;
%[x,y]=meshgrid(linspace(min(x1),max(x1),1000),linspace(min(y1),max(y1),1000));
Q=1000;%源强
%sigma_y=ax^b 水平扩散系数
a=0.123;
b=0.905;
sigy=a*x.^b;
%sigma_z=cx^d 垂直扩散系数
c=0.2;
d=0.76;
sigz=c*x.^d;
u=2.7;%风速
H=200;%泄漏有效高度
z=0;%高度
 
Qpi=2*Q./(2*pi*u.*sigy.*sigz+eps);
ex1=exp(-0.5*(y./(sigy+eps)).^2);
ex2=exp(-0.5*((z-H)./(sigz+eps)).^2)+exp(-0.5*((z+H)));
C=Qpi.*ex1.*ex2;
mesh(x,y,C)
hold on
contour(x,y,C,'ShowText','on')