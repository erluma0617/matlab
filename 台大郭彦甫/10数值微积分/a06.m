x0=pi/2;
h=0.1;
x=[x0 x0+h];
y=[sin(x0) sin(x0+h)];
m=diff(y)./diff(x)