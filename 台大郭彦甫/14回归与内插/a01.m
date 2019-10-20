x=[-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
y=[-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
fit=polyfit(x,y,1);
xfit=[x(1):0.1:x(end)];
yfit=fit(1)*xfit+fit(2);
plot(x,y,'ro',xfit,yfit);
set(gca,'FontSize',14);
legend('data points','best-fit');