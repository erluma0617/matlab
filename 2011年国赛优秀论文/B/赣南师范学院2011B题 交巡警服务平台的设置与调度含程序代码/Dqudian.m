%用MATLAB导入数据x,y,x1,y1
x
y
x1
y1

plot(x,y,'.')
%grid on
for i=1:52
   text(x(i),y(i),[' ',num2str(i),'(',num2str(x(i)),',',num2str(y(i)),')'])
end
hold on
%x1=xlsread('C:\Documents and Settings\Administrator\桌面\D.xls','E2:E77')
%y1=xlsread('C:\Documents and Settings\Administrator\桌面\D.xls','F2:F77')
z=rand(76,1);
x=[zeros(319,1);x];
y=[zeros(319,1);y];
for i=1:76
    z(i)=sqrt((x(x1(i))-x(y1(i))).^2+(y(x1(i))-y(y1(i))).^2);
   plot([x(x1(i));x(y1(i))],[y(x1(i));y(y1(i))],'b')
end
z
xlswrite('C:\Documents and Settings\Administrator\桌面\D.xls',z,'G2:G77')
hold off
