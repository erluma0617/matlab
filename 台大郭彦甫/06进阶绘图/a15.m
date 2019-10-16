x=[1:10;3:12;5:14];
imagesc(x);
colorbar;
map=zeros(256,3);
map(:,2)=(0:255)/255;
colormap(map);