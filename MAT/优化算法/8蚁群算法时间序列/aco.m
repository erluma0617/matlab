% ��Ⱥ�㷨ʾ������
clc;
clear;
close all;
%% ��ʼ��������
x=[82 91 12 92 63 9 28 55 96 97 15 98 96 49 80 14 42 92 80 96];   % �����x����
y=[66 3 85 94 68 76 75 39 66 17 71 3 27 4 9 83 70 32 95 3];     % �����y����
% x=[1304,3639,4177,3712,3488,3326,3238,4196,4312,4386,3007,2562,2788,2381,1332,3715,3918,4061,3780,3676,4029,4263,3429,3507,3394,3439,2935,3140,2545,2778,2370];
% y=[2312,1315,2244,1399,1535,1556,1229,1004,790,570,1970,1756,1491,1676,695,1678,2179,2370,2212,2578,2838,2931,1908,2367,2643,3201,3240,3550,2357,2826,2975];
[X1,X2]=meshgrid(x,x);
[Y1,Y2]=meshgrid(y,y);
D=sqrt((X1-X2).^2+(Y1-Y2).^2);  % ����֮�����
N=numel(x);   % һ���ж��ٸ����� 
MaxIt=300;      % ����������
nAnt=40;        % ���ϵĸ�������Ⱥ������

tau=ones(N,N);   % ��ʼ��Ϣ��
eta=1./D;        % �������Ӿ���,Ҳ���Ǿ���ĵ��������ڶ�ת�Ƹ��ʵ�����
rho=0.05;       % �ӷ��� 
Tour=zeros(nAnt,N);% ���ڼ�¼·��
Cost=zeros(nAnt,1);% ���ڼ�¼·���ܳ���
BestCost=inf;
BestCostALL=Inf(MaxIt,1);
for iter=1:MaxIt   % ��������
    for kAntID=1:nAnt   % ÿ�����Ϸֱ����
        Tour(kAntID,1)=randi([1 N]);  % 1��N֮�������һ����������Ϊ��ʼ��
        for itourcity=2:N   % ��Ҫ�ߵĳ���·���±꣬��Ϊ��һ���Ѿ����ˣ����������2��ʼ���
            lastcityID=Tour(kAntID,itourcity-1);
            P=tau(lastcityID,:).*eta(lastcityID,:);% ת�Ƹ���
            P(Tour(kAntID,1:itourcity-1))=0;   % ���ɱ��Ѿ��߹��ĸ�������Ϊ0
            P=P/sum(P);  % ��һ��
            r=rand;
            C=cumsum(P);    
            j=find(r<=C,1);   % ����֮ǰ���ʷֲ����ѡ��һ������
            Tour(kAntID,itourcity)=j;  % ��¼�����߹��ĳ���
        end
        Ttemp=[Tour(kAntID,:)' Tour(kAntID,[2:end 1])'];  % ��ǰ���ϸ���·��������յ�
        L=0;   % ��·�����ȳ�ʼֵ
        for i=1:N
            L=L+D(Ttemp(i,1),Ttemp(i,2)); % ������·�����ȼ�����
        end
        Cost(kAntID)=L;   % �ܵ�·������
        if Cost(kAntID)<BestCost    % ���·������
            BestTour=Tour(kAntID,:);  % �������·��
            BestCost=Cost(kAntID);    % �������·������
        end
    end
    % ������Ϣ��
    for kAntID=1:nAnt
        tour=[Tour(kAntID,:) Tour(kAntID,1)]; %  ��β����������·�� ȥ�����һ����β������
        for itourcity=1:N      %��β������N-1
            i=tour(itourcity);
            j=tour(itourcity+1);
            tau(i,j)=tau(i,j)+1/Cost(kAntID);  
            % ԭ����Ϣ�أ����������ӵ���Ϣ�أ������ӵ���Ϣ�ذ����ܳ��ȵĵ���������
        end
    end
    % ��Ϣ�ػӷ�
    tau=(1-rho)*tau;
    % �洢ÿ�����Ž��
    BestCostALL(iter)=BestCost;
    
    % ��ʾ���������Ϣ
    disp(['Iteration ' num2str(iter) ': Best Cost = ' num2str(BestCostALL(iter))]);
    
    % �����м���ͼ
    PlotSolution(BestTour,x,y);
    pause(0.01);
    
end

%% ���

figure;
plot(BestCostALL,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');
grid on;