x=linspace(0,2*pi,1000);
y=sin(x);
plot(x,y);
h=plot(x,y);
get(h)
%��ʾ��������
%get(gca)
set(gca,'XLim',[0,2*pi]);
set(gca,'YLim',[-1.2,1.2]);
%set(gca,'Fontsize',25);
set(gca,'XTick',0:pi/2:2*pi);
%set(gca,'XTickLabel',0:90:360);
%set(gca,'xtickLabel',{'0','pi/2','pi','3pi/2','2pi'})
set(h,'LineStyle','-.','LineWidth',7.0,'Color','g');