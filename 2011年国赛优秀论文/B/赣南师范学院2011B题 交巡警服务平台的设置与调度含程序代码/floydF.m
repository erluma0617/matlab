function[D,R]=floyd(z)
%z=xlsread('C:\Documents and Settings\Administrator\×ÀÃæ\s.xls','A1:AZ52');
n=size(z,1);
D=z;
for i=1:n
    for j=1:n
       R(i,j)=j;
    end
end
R

for K=1:n
    for i=1:n
        for j=1:n
            if D(i,K)+D(K,j)<D(i,j)
               D(i,j)=D(i,K) +D(K,j);
               R(i,j)=R(i,K);
            end
        end
    end
  K
  D
  R
end 
 