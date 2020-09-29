x
y

plot(x,y,'.')
%grid on
for i=1:103
  text(x(i),y(i),num2str(i))
end
hold on
%x1=xlsread('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls','E2:E77')
%y1=xlsread('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls','F2:F77')
x1
y1
z=rand(151,1);
x=[zeros(371,1);x];
y=[zeros(371,1);y];
for i=1:151
    z(i)=sqrt((x(x1(i))-x(y1(i))).^2+(y(x1(i))-y(y1(i))).^2);
   plot([x(x1(i));x(y1(i))],[y(x1(i));y(y1(i))],'b')
end
z
%xlswrite('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls',z,'G2:G77')
hold off
