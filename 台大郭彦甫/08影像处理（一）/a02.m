I=imread('rice.png');
subplot(1,2,1);
imshow(I);
J=immultiply(I,1.5);%变亮,将1.5变为小于1的数值可以变暗
subplot(1,2,2);
imshow(J);