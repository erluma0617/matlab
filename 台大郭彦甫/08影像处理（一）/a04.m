%imhist(I)%显示频率
I=imread('pout.png');
I2=histeq(I);%拉大间距
subplot(1,4,1);
imhist(I);
subplot(1,4,2);
imshow(I);
subplot(1,4,3);
imshow(I2);
subplot(1,4,4);
imhist(I2);