%SEIR模型修正
%假设第5天开始采取隔离措施1月19日第一例确诊；1月23号武汉开始封城，此时其他省市也相应作出响应隔离措施
N=13026800;%人口数
E=0;%潜伏者
D=0;%死亡患者人数
I=1;%感染人数
S=N-I;%易感人数
R=0;%康复者人数
r=20;%感染者接触数量
B=0.6;%传染概率
a=0.17;%潜伏者转化为感染者的概率
r2=8;%潜伏者接触人数
B2=0.03;%潜伏者传染正常人的概率
y=0.05;%康复概率
k=0.0001;%日致死率
B3=0.1;%转阴率
T=1:200;
for idx=1:length(T)-1
    if idx>=7
        r=0.20;
        r2=1;
        y=0.1
    end
    if idx<7
        S(idx+1)=S(idx)-r*B*S(idx)*I(idx)/N-r2*B2*S(idx)*E(idx)/N;%易感人群迭代
        E(idx+1)=E(idx)+r*B*S(idx)*I(idx)/N-a*E(idx)+r2*B2*S(idx)*E(idx)/N;%潜伏者迭代
        I(idx+1)=I(idx)+a*E(idx)-(k+y)*I(idx);%感染人数迭代
        R(idx+1)=R(idx)+y*I(idx);%康复人数迭代
        D(idx+1)=R(idx)+k*I(idx);%死亡患者人数迭代
    else
        S(idx+1)=S(idx)-r*B*S(idx)*I(idx)/N-r2*B2*S(idx)*E(idx)/N+B3*E(idx-6);%易感人群迭代
        E(idx+1)=E(idx)+r*B*S(idx)*I(idx)/N-a*E(idx)+r2*B2*S(idx)*E(idx)/N-B3*E(idx-6);%潜伏者迭代
        I(idx+1)=I(idx)+a*E(idx)-(k+y)*I(idx);%感染人数迭代
        R(idx+1)=R(idx)+y*I(idx);%康复人数迭代
        D(idx+1)=R(idx)+k*I(idx);%死亡患者人数迭代
    end
end
B={'01-19','02-08','02-28','03-19','04-08','04-28','05-18','06-07','06-27','07-17','08-06'};
plot(T,E,T,I,T,R);
grid on;
hold on;
plot([7 7],[0 1000]);
set(gca,'XTickLabel',B)
xlabel('日期');
ylabel('人数');
legend('潜伏者','患者','康复者','开始实施隔离措施');
title('采取隔离措施的SEIR模型');