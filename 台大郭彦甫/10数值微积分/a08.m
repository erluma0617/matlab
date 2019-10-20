g=colormap(lines);
hold on;
for i = 1:4
    x =0:power(10,-i):pi;
    y =sin(x);
    m = diff(y)./diff(x);
    plot(x(1:end-1),m,'Color',g(i,:));
end
hold off;
set(gca,'XLim',[0,pi/2]);
set(gca,'YLim',[0,1.2]);
set(gca,'FontSize',18);
set(gca,'FontName','symbol');
set(gca,'XTick',0:pi/4:pi/2);
set(gca,'XTickLabel',{'0','p/4','p/2'});
h=legend('h-0.1','h-0.01','h-0.001','h-0.0001');
set(h,'FontName','Times New Roman');
box on;

    
    