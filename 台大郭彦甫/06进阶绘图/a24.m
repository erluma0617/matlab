[X,Y,Z]=sphere(64);
h=surf(X,Y,Z);
axis square vis3d off;
reds=zeros(256,3);
reds(:,1)=(0:256.-1)/255;
colormap(reds);
shading interp;
lighting phong;
set(h,'AmbientStrength',0.75,'DiffuseStrength',0.50);
L1=light('Position',[-1,-1,-1]);%light打光
set(L1,'Position',[-1,-1,1]);%改变打光位置
set(L1,'Color','g');%改变大光颜色
