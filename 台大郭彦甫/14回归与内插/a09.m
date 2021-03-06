xx=-2:.5:2;
yy=-2:.5:3;
[X,Y]=meshgrid(xx,yy);
Z=X.*exp(-X.^2-Y.^2);
xx_i=-2:.1:2;
yy_i=-2:.1:3;
Z_c=interp2(xx,yy,Z,X_i,Y_i,'cubic');
surf(X_i,Y_i,Z_c);
hold on;
plot3(X,Y,Z+0.01,'OK','MarkerFaceColor','r');
hold off;