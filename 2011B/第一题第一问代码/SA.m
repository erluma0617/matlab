i=1;
j=1;
x=0;
y=0;
for i=1:20
    for j=21:92
        x=i;
        y=data(i,j);
        figure
        plot(x,y,'linewidth',1.5)
    end
end
%figure
%plot(x,y,'linewidth',1.5)
%ylim([-1.5, 1.5])
xlabel('服务平台')
ylabel('到各点时间')
title('出警时间')
hold on

% 1. 标记出最大值点
[maxVal,maxIndex] = max(y);
plot(x(maxIndex), maxVal, 'r*','linewidth',2)
text(x(maxIndex), maxVal, {['    X: ' num2str(x(maxIndex))];['    Y: ' num2str(maxVal)]})
hold on

% 2. 标记出最小值点
[minVal,minIndex] = min(y);
plot(x(minIndex), minVal, 'ks','linewidth',2)
