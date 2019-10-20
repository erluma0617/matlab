m_i=~isnan(x_m);
y_i=spline(x_m(m_i),y_m(m_i),x);
hold on;
plot(x,y_i,'-g','LineWidth',2);
hold off;
h=legend('Original','Linear','Spline');
set(h,'FontName','Times New Roman');
