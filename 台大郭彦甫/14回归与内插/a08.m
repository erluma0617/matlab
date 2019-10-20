xx=-2:.5:2;
yy=-2:.5:3;
[X,Y]=meshgrid(xx,yy);
Z=X.*exp(-X.^2-Y.^2);
surf(X,Y,Z);
hold on;
plot3(X,Y,Z+0.01,'ok','MarkerFaceColor','r')
xx_i=-2:.1:2;
yy_i=-2:.1:3;
[X_i,Y_i]=meshgrid(xx_i,yy_i);
Z_i=interp2(xx,yy,Z,X_i,Y_i);
surf(X_i,Y_i,Z_i);
hold on;
plot3(X,Y,Z+0.01,'ok','MarkerFaceColor','r')
%ÏßÐÔÄÚ²åÍ¼