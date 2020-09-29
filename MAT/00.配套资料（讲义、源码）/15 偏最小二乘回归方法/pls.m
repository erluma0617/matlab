%ƫ��ؼ��㣺
function [sol]=PLS(pz,k)    %pzΪԭʼ���ݾ���,kΪ�Ա�������ȫ����,���Ϊƫ���˷�ϵ��
mu=mean(pz);sig=std(pz); %���ֵ�ͱ�׼��
rr=corrcoef(pz); %�����ϵ������
data=zscore(pz); %���ݱ�׼��,��������X*��Y*
n=k;m=size(pz,2)-k; %n ���Ա����ĸ���,m ��������ĸ���
x0=pz(:,1:n);y0=pz(:,n+1:end); %ԭʼ���Ա��������������
e0=data(:,1:n);f0=data(:,n+1:end); %��׼������Ա��������������
num=size(e0,1);%��������ĸ���
chg=eye(n); %w ��w*�任����ĳ�ʼ��
for i=1:n
%���¼���w��w*��t �ĵ÷�������
matrix=e0'*f0*f0'*e0;
[vec,val]=eig(matrix); %������ֵ����������
val=diag(val); %����Խ���Ԫ�أ����������ֵ
[val,ind]=sort(val,'descend');
w(:,i)=vec(:,ind(1)); %����������ֵ��Ӧ����������
w_star(:,i)=chg*w(:,i); %����w*��ȡֵ
t(:,i)=e0*w(:,i); %����ɷ�ti �ĵ÷�
alpha=e0'*t(:,i)/(t(:,i)'*t(:,i)); %����alpha_i
chg=chg*(eye(n)-w(:,i)*alpha'); %����w ��w*�ı任����
e=e0-t(:,i)*alpha'; %����в����
e0=e;
%���¼���ss(i)��ֵ
beta=t\f0; %��ع鷽�̵�ϵ�������ݱ�׼����û�г�����
cancha=f0-t*beta; %��в����
ss(i)=sum(sum(cancha.^2)); %�����ƽ����
%���¼���press(i)
for j=1:num
t1=t(:,1:i);f1=f0;
she_t=t1(j,:);she_f=f1(j,:); %����ȥ�ĵ�j �������㱣������
t1(j,:)=[];f1(j,:)=[]; %ɾ����j ���۲�ֵ
beta1=[t1,ones(num-1,1)]\f1; %��ع������ϵ��,������г�����
cancha=she_f-she_t*beta1(1:end-1,:)-beta1(end,:); %��в�����
press_i(j)=sum(cancha.^2); %�����ƽ����
end
press(i)=sum(press_i);
Q_h2(1)=1;
if i>1, Q_h2(i)=1-press(i)/ss(i-1); end
if Q_h2(i)<0.0975
fprintf('����ĳɷָ���r=%d',i); break
end
end
beta_z=t\f0; %��Y*����t �Ļع�ϵ��
xishu=w_star*beta_z; %��Y*����X*�Ļع�ϵ����ÿһ����һ���ع鷽��
mu_x=mu(1:n);mu_y=mu(n+1:end); %����Ա�����������ľ�ֵ
sig_x=sig(1:n);sig_y=sig(n+1:end); %����Ա�����������ı�׼��
ch0=mu_y-(mu_x./sig_x*xishu).*sig_y; %����ԭʼ���ݻع鷽�̵ĳ�����
for i=1:m
xish(:,i)=xishu(:,i)./sig_x'*sig_y(i); %����ԭʼ���ݻع鷽�̵�ϵ��
end
sol=[ch0;xish]; %��ʾ�ع鷽�̵�ϵ����ÿһ����һ�����̣�ÿһ�еĵ�һ�����ǳ�����
ch0=repmat(ch0,num,1);
yhat=ch0+x0*xish; %����Y ��Ԥ��ֵ
y1max=max(yhat); %��Ԥ��ֵ�����ֵ
y2max=max(y0); %��۲�ֵ�����ֵ
ymax=max([y1max;y2max]); %��Ԥ��ֵ�͹۲�ֵ�����ֵ
cancha=yhat-y0; %����в�
if rem(m,2)==0
    l=m/2;
else
    l=(m+1)/2;
end
for i=1:m
    subplot(2,l,i)
    plot(0:ymax(i),0:ymax(i),yhat(:,i),y0(:,i),'*')
end


    




