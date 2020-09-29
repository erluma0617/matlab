clear; clc

[a ,map]= imread('test.JPG');
I=im2bw(a,0.75);
I=1-I;
Ileast = bwlabel(I,4);   % �궨ͼ�����ͨ��
nummax = max(Ileast(:)); % �ֿ���
col=length(I(:,1));      % ����
row=length(I(1,:));      % ����
Area_candidate = struct('top',{},'left',{},'bottom',{},'right',{});%��ʼ���ṹ��
for n=1:nummax
    Area_candidate(n).top=col;
    Area_candidate(n).left=row;
    Area_candidate(n).bottom=0;
    Area_candidate(n).right=0;
end

%�ж�������ͨ�����С��Ӿ��εı߽��ֵ
for a=1:col
        for b=1:row
            if Ileast(a,b)~=0
               Area_candidate(Ileast(a,b)).top = min ( Area_candidate(Ileast(a,b)).top ,a);%�õ�������ͨ��ı߽�
               Area_candidate(Ileast(a,b)).left = min ( Area_candidate(Ileast(a,b)).left ,b);
               Area_candidate(Ileast(a,b)).bottom = max ( Area_candidate(Ileast(a,b)).bottom ,a);
               Area_candidate(Ileast(a,b)).right = max ( Area_candidate(Ileast(a,b)).right ,b);
            end
        end
end
%�½��Ŀվ����ϵó�ͼ��
I_out=zeros(size(I));
for n=1:nummax
    I_out(Area_candidate(1,n).top:Area_candidate(1,n).bottom , Area_candidate(1,n).left:Area_candidate(1,n).right) =1 ;%������
end
imshow(I_out)
