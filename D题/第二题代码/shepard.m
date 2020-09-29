%二维插值拟合，曲面拟合
clear;
clc;
close all;

x=[-6.1,2.8,9.7,-0.7,0,-6.2,-1.5,-4.4,25.1,23.8,2.1,9.1,-8.2];
y=[-0.33,-1.2,-0.425,-5.2,0,2,-1.5,-12.4,43.6,10.8,-6.7,5,11];
z=[213.7544,194.2075,188.2793,174.9009,204.63,210.9009,196.4554,178.6396,190.5586,179.1717,182.6182,204.0278,216.8017];

ti=-15:0.01:45;
[xi,yi]=meshgrid(linspace(min(x),max(x),1000),linspace(min(y),max(y),1000));%生成网格采样点
zi=griddata(x,y,z,xi,yi,'cubic');%数据网格化
meshc(xi,yi,zi);
colorbar;
shading interp %对曲面或图形对象的颜色着色进行色彩的插值处理，使色彩平滑过渡
xlabel('横向距离(千米）');
ylabel('纵向距离（千米）');
zlabel('PM2.5平均浓度');
hold on 
plot3(x,y,z,'*','MarkerSize',20)%markersize标注点的大小
figure;
[c,h]=contourf(xi,yi,zi);%画等高线
clabel(c,h);%等高线标注
colorbar;
hold on
plot(x,y,'*','MarkerSize',20)
xlabel('横向距离（千米）');
ylabel('纵向距离（千米）');
