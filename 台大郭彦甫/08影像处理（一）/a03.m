I=imread('rice.png');
J=imread('rice.png');
K=imadd(I,J);%影像相加会变亮
subplot(1,3,1);
imshow(I);
subplot(1,3,2);
imshow(K);
subplot(1,3,3);
imshow(J);