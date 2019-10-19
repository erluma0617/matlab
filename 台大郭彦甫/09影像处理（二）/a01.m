I=imread('rice.png');
level=graythresh(I);
bw=im2bw(I,level);
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(bw);
%转成二进制影像