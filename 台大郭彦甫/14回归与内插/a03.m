x=[-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
y=[-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
figure('Position',[50 50 1500 400]);
for i=1:3
    subplot(1,3,i);
    p=polyfit(x,y,i);
    xfit=x(1):0.1:x(end);
    yfit=polyval(p,xfit);
    plot(x,y,'ro',xfit,yfit);
    set(gca,'FontSize',14);
    ylim([-17,11]);
    legend('Data points','Fitted curve');
end