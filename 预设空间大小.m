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
%ͨ����������������ʱ��Աȣ����ǿ���������ܵ�Ԥ��ռ��С���������Լӿ���������ٶȡ�