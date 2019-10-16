turns=40*pi;
t=linspace(0,turns,4000);
x=cos(t).*(turns-t)./turns;
y=sin(t).*(turns-t)./turns;
z=t./turns;
plot3(x,y,z);
grid on;
