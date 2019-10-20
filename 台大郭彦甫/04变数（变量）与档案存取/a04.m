A=struct('data',[3 4 7;8 0 1],'nest',...
  struct('testnum','Test 1','xdata',[4 2 8],'ydata',[7 1 6]));
%...为第一行未结束，接第二行
A(2).data=[9 3 2;7 6 5];
A(2).nest.testnum='Test 2';
A(2).nest.xdata=[3 4 2];
A(2).nest,ydata=[5 0 9];
A.nest