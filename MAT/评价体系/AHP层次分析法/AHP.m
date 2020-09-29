function [D,E,WW,CRB,CRC,CR]=AHP(B,C)
%�������ܣ�
%��������B��׼�����жϾ���
%��������C��׼����У�ÿһ�����ض��ڷ�������жϾ��󣨡�����д������
%����ֵ���ܣ�
%����D��׼����Ȩֵ�����
%����E�Ƿ�����ĵ�Ȩֵ�����
%����WW����Ȩֵ����������Ľ����
%����CRB��׼����һ���Լ�������
%����CRC�Ƿ������һ���Լ�������
%����CR���������һ���Լ�������
RI=[1e-6 1e-6 0.52 0.89 1.12 1.26 1.63 1.41 1.46 1.49 1.52 1.54 1.56 1.58 1.59];
[x,y]=size(B);
[c,v]=size(C);
E=[];
WW=[];
CRC=[];
CICI=[];
RIRI=[];
I=[];
for k=1:y
    D(k)=sum(B(k,:))/y;
end
D=D/sum(D);
CIB=(((1/x)*sum(B*D'./D'))-x)/(x-1);
CRB=CIB/RI(x);
for k=1:c:v
    E1=[];
    for k1=1:c
        ei=sum(C(k1,k:(k+c-1)))/c;
        E1=[E1;ei];
    end
E1=E1/sum(E1);
    E=[E,E1];
end
for k=1:c
    WWi=sum(D.*E(k,:));
    WW=[WW,WWi];
end   
for k=1:x
    CICi=(1/c)*sum((C(:,((k-1)*c+1):(k*c))*E(:,k))./E(:,k));
    CICi=(CICi-c)/(c-1);
    CICI=[CICI,CICi];
    CRCi=CICi/RI(c); 
    CRC=[CRC,CRCi];
    RIRI=[RIRI,RI(c)];
end
CR=sum((CICI.*D))/sum((RIRI.*D));
WW1=sort(WW,'descend');
for k=1:c
    for w=1:c
        if WW(k)==WW1(w)
            I=[I,w];
            break
        end
    end
end
WW=[WW;I];