function [Dd,E,W,S]=TEM(A,B,C)
%�������ܣ�
%��������A��ԭʼ������ɵľ���
%��������B��һ���о���ÿһ��Ԫ����1��0��ɣ�1����ñ���Ϊ����ָ�ꣻ0����ñ���Ϊ����ָ�꣩��
%��������CΪһ�׷�����Ԫ����1��0��ɣ�1��������Խ�����ң�Ȩ��Խ��0��������Խ���ң�Ȩ��Խ��
%����ֵ���ܣ�
%����Dd�����ݱ�׼����Ľ����
%����E��Ԫ���Ǹ���ָ�����Ϣ�ء�
%����W��Ԫ���Ǹ���ָ���Ȩ�ء�
%����S��Ԫ���Ǹ����������������֡���������Ľ����
[m,n]=size(A);
Dd=[];
D=[];
E=[];
W=[];
S=[];
I=[];
for k=1:n
    if B(k)==1
        Ak=(A(:,k)-min(A(:,k)))./(max(A(:,k))-min(A(:,k)));
        Dd=[Dd,Ak];
    elseif B(k)==0
        Ak=(max(A(:,k))-A(:,k))./(max(A(:,k))-min(A(:,k)));
        Dd=[Dd,Ak];
    end
end
for k=1:n
    Ai=Dd(:,k)./sum(Dd(:,k));
    D=[D,Ai];
end
for k=1:n
    Aa=(-1)*(1/log(m))*(sum(D(:,k).*log(D(:,k)+1e-6)));
    E=[E,Aa];
end
if C==1
    E1=(1-E);
elseif C==0
    E1=E;
end
for k=1:n
    dj=E1(1,k)./sum(E1(1,:));
    W=[W,dj];
end
for k=1:m
    si=sum(W(1,:).*A(k,:));
    S=[S,si];
end  
S1=sort(S,'descend');
for k=1:m
    for w=1:m
        if S(k)==S1(w)
            I=[I;w];
            break
        end
    end
end
S=[S',I];