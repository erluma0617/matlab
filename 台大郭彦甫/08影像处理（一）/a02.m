I=imread('rice.png');
subplot(1,2,1);
imshow(I);
J=immultiply(I,1.5);%����,��1.5��ΪС��1����ֵ���Ա䰵
subplot(1,2,2);
imshow(J);