clc;
clear ;

[x,y]=meshgrid(0:20:5000,-2000:20:2000);

Q=1000;%源强
%sigma_y=ax^b 水平扩散系数
a=0.189396;
b=0.884946;
sigy=a*x.^b;
%sigma_z=cx^d 垂直扩散系数
c=0.136659;
d=0.815575;
sigz=c*x.^d;
u=2.7;%风速
H=200;%泄漏有效高度
z=0;%高度

Qpi=2*Q./(2*pi*u.*sigy.*sigz+eps);
ex1=exp(-0.5*(y./(sigy+eps)).^2);
ex2=exp(-0.5*((z-H)./(sigz+eps)).^2)+exp(-0.5*((z+H)));
C=Qpi.*ex1.*ex2;
mesh(x,y,C)
%hold on
%contour(x,y,C,'ShowText','on')
colorbar
shading interp
xlabel('横向距离');
ylabel('纵向距离');
zlabel('PM2.5浓度');
hold on
[C,h]=contourf(x,y,C);
clabel(C,h)
colorbar

 
 