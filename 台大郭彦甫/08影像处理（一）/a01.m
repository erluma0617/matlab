clear,close all
I=imread('pout.png');%读取影像
imshow(I);%显示影像
for i=1:size(I,1)
    for j=1:size(I,2)
        if(rem(i,2)==0 && rem(j,2)==0)
            I(i,j)=0;
        end
    end
end