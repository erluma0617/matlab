X=randn([10,3])*3;
X(X(:,1)<0,1)=0;
X(X(:,3)>0,3)=0;
boxplot(X,{'Right_skewed','Symmetric','Left-skewed'});
y=skewness(X)