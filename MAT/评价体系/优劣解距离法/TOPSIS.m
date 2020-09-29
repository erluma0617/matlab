function [Dd,D,E]=TOPSIS(A,B,w)
%�������ܣ�
%��������A��ԭʼ������ɵľ���
%��������B��һ���о���ÿһ��Ԫ����1��0��ɣ�1����ñ���Ϊ����ָ�ꣻ0����ñ���Ϊ����ָ�꣩��
%��������w��һ���о���Ȩ�ء�
%����ֵ���ܣ�
%����Dd������ͬ���ƻ���Ľ����
%����D�����ݹ�һ����Ľ����
%����M�Ǽ�Ȩ����
%����E��������ݵ��žࡢ�Ӿࡢ�����Žӽ��̶ȡ���������
[m,n]=size(A);
I=[];
D=[];
Dd=[];
M=[];
Aup=[];
Adown=[];
Diup=[];
Didown=[];
for k=1:n                %�������һ���Ľ�����������D
    if B(k)==1
        Ak=A(:,k);
        Dd=[Dd,Ak];
    elseif B(k)==0
        Ak1=1./(A(:,k));
        Dd=[Dd,Ak1];
    end
end
for k=1:n
     Dk=Dd(:,k)/sqrt(sum(Dd(:,k).^2));
     D=[D,Dk];
end
for i=1:m
for j=1:n
M(i,j)=D(i,j)*w(j)%��MΪ��Ȩ����
end
end
for k=1:n
    Aup=[Aup,max(M(:,k))];   %��������ŷ������������Aup
    Adown=[Adown,min(M(:,k))];  %��������ӷ������������Adown
end
for k=1:m
Diup=[Diup;sqrt(sum((Aup-M(k,:)).^2))];  
%���������ָ�������ŷ����ľ��룬���������Diup
Didown=[Didown;sqrt(sum((Adown-M(k,:)).^2))]; 
%���������ָ�������ӷ����ľ��룬���������Didown
end
C=Didown./(Didown+Diup); %�������۶��������ŷ����Ľӽ��̶�
C1=sort(C,'descend');
for k=1:m
    for w=1:m
        if C(k)==C1(w)
            I=[I;w];
        end
    end
end
E=[Diup,Didown,C,I];
