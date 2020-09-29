function fitnessVal = fitness( data)

%二元函数优化：
data=xlsread('A区各点最短路径长度.xlsx');
%i=1;
%j=1;
for i=1:20
    for j=21:92
        fitnessVal =data(i,j)-1.1 
    end
end
end

 