clear;

x=[-6.1 2.8 9.7 -0.7 0 -6.2 -1.5 -4.4 25.1 23.8 2.1 9.1 -8.2];
y=[-0.33 -1.2 -0.425 -5.2 0,2 -1.5 -12.4 43.6 10.8 -6.7 5 11];
%z=[213.7544 194.2075 188.2793 174.9009 204.63 210.9009 196.4554 178.6396 190.5586 179.1717 182.6182 204.0278 216.8017];
x1=x+6.1;
y1=y+0.33;
s=sqrt(x1.^2+y1.^2);
Q=500*2;
u=2.7;

apha1=0.884946;
gama1=0.189396;
sigma_y1=gama1*s.^apha1;

q=0.3;
tao1=0.5;
tao2=2;
sigma_y2=sigma_y1*(tao2/tao1)^q;

apha2=0.815575;
gama2=0.136659;
sigma_z1=gama2*s.^apha2;

q=0.3;
tao1=0.5;
tao2=2;
sigma_z2=sigma_z1*(tao2/tao1)^q;

c1= abs(Q./(pi*u*sigma_y2(2:end).*sigma_z2(2:end)).*exp(-y1.^2./sigma_y2.^2(2:end)))
c1=zeros(1,13);
c1(1)=Q;
c1(2:end)=abs(Q./(pi*u*sigma_y2(2:end).*sigma_z1(2:end)));
[xi,yi]=meshgrid(linspace(min(x1),max(x1),1000),linspace(min(y1),max(y1),1000));
ci=griddata(x1,y1,c1,xi,yi,'cubic');
figure
meshc(xi,yi,ci)
colorbar
shading interp
xlabel('∫·œÚæ‡¿Î');
ylabel('◊›œÚæ‡¿Î');
zlabel('PM2.5≈®∂»');
hold on
plot3(x1,y1,c1,'*','MarkerSize',8)
figure
[c,h]=contourf(xi,yi,ci);
clabel(c,h)
colorbar
hold on
plot(x1,y1,'*','MarkerSize',6)
xlabel('∫·œÚæ‡¿Î');
ylabel('◊›œÚæ‡¿Î');



