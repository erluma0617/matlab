load cape
X=conv2(ones(9,9)/81,cumsum(cumsum(randn(100,100)),2));
surf(X,'EdgeColor','none','EdgeLighting','Phong','FaceColor','interp');
colormap(map);
caxis([-10,300]);
grid off;
axis off;