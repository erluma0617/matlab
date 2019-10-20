x=linspace(0,2*pi,40);
x_m=x;
x_m([11:13,28:30])=NaN;%擦掉一部分点
y_m=sin(x_m);
plot(x_m,y_m,'ro','MarkerFaceColor','r');
xlim([0,2*pi]);
ylim([-1.2,1.2]);
box on;
set(gca,'FontName','symbol','FontSize',16);
set(gca,'XTickLabel',{'0','p/2','p','3p/2','2p'});
m_i=~isnan(x_m);
y_i=interp1(x_m(m_i),y_m(m_i),x);
hold on;
plot(x,y_i,'-b','LineWidth',2);
hold off;