x
y
plot(x,y,'.')
%grid on
for i=1:154
   text(x(i),y(i),num2str(i))
end
hold on
%x1=xlsread('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls','E2:E77')
%y1=xlsread('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls','F2:F77')
x1
y1
z=rand(247,1);
x=[zeros(165,1);x];
y=[zeros(165,1);y];
for i=1:247
    z(i)=sqrt((x(x1(i))-x(y1(i))).^2+(y(x1(i))-y(y1(i))).^2);
   plot([x(x1(i));x(y1(i))],[y(x1(i));y(y1(i))],'b')
end
z
%xlswrite('C:\Documents and Settings\Administrator\×ÀÃæ\D.xls',z,'G2:G77')
hold off
