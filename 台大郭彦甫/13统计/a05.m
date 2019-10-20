load stockreturns;
x1=stocks(:,3);
x2=stocks(:,10);
boxplot([x1,x2],{'3','10'});
[h,p]=ttext2(x1,x2)