I=imread('rice.png');
subplot(1,2,1);
imshow(I);
J=imrotate(I,35,'bilinear');
subplot(1,2,2);
imshow(J);
size(I)
size(J)