x=0:0.1:2*pi;
y1=sin(x);
y2=exp(-x);
plot(x,y1,'--*',x,y2,':o');
xlabel('t=0 to 2\pi');%ºáÖá
ylabel('values of sin(t) and e^(-x)');%×ÝÖá
title('Function Plots of sin(t) and e^(-x)');%±êÌâ
legend('sin(t)','e^{-x}');