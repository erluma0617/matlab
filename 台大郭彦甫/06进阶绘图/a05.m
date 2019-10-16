x=[1 2 5 4 8];
y=[x;1:5];
subplot(1,2,1);
bar(y,'stacked');
title('Stacked');

subplot(1,2,2);
barh(y);
title('Horizontal');
