%约束条件
clc;

data=xlsread('A区各点最短路径长度.xlsx');
i=1;
j=1;
for i=1:20
    for j=21:92
        if data(i,j)<=2.5013
            i
            j
        end
    end
end
