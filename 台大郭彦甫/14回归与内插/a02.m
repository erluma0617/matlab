x=[-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
y=[-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
scatter(x,y);
box on;
axis square;
corrcoef(x,y)
%确定是否有线性关系