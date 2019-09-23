 x=2;k=0;error=inf;
 error_threshold= le-32;
 while error>error_threshold
     if k>100
         break
     end
     x=x-sin(x)/cos(x);
     error=abs(x-pi);
     k=k+1;
 end

tic
A=zeros(2000,2000);
for ii=1:size(A,1)
    for jj=1:size(A,2)
        A(ii,jj)=ii+jj;
    end
end
toc
%通过这两个程序运行时间对比，我们可以清楚感受到预设空间大小，可以明显加快程序运行速度。