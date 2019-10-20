x=-3:3;
y=[-1 -1 -1 0 1 1 1];
t=-3:.01:3;
s=spline(x,y,t);
p=pchip(x,y,t);
hold on;
plot(t,s,':g','Linewidth',2);
plot(t,p,'--b','LineWidth',2);
plot(x,y,'ro','MarkerFaceColor','r');
hold off;
box on;
set(gca,'FontSize',16);
h=legend('Original','Spline','Hermite');

