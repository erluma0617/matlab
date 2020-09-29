A=zeros(92,92);
i=1;
while i<=140
    X=line(i,1);
    Y=line(i,2);
    A(X,Y)=1;
    A(Y,X)=1;
    i=i+1;
end %�����������ڽӾ���

gplot(A,point,'-*')

datax= xlsread('1.xlsx');
datay= xlsread('2.xlsx');
array=[datax ,datay];
distance=pdist(array);
a = squareform(distance);

%����floyd��ʼ����
for m=1:92
    for n=1:92
        if (m==n)
            a(m,n)=0;
        else if (A(m,n)==0)
                a(m,n)=inf;
            else a(m,n)=a(m,n);
            end
        end
    end
end


[d,r]=floyd(a)

%��ӡ���·��
for i = 1 : 20
    for j = 1 : 92
        DisplayPath(r, i, j);   
    end
end

%�������ݵ����
%  xlswrite('d.xlsx',d)