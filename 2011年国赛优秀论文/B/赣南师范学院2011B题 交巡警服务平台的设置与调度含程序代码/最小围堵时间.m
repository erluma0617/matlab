function pos=zuixiao(T)
A=T;
flag=0;
Tmin=min(min(A));[m,n]=size(A);
pos=[];%zeros(2,17);
while flag==0 & Tmin<1000
    I=find(A==Tmin);
    if mod(I,m)==0
        j=I/m;i=m;
    else
        j=fix(I/m)+1;i=mod(I,m);
    end
    pos=[pos;i,j,Tmin];b = unique(pos(:,1));
    if length(b)<m
        A(:,j)=1000;A(i,:)=1000;Tmin=min(min(A));
    else
        flag=1;
    end
end