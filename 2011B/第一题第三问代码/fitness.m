
function fitnessVal = fitness( i)
clc;

data=xlsread('A区各点最短路径长度.xlsx');

for i=21:92
   % for j=21:92
        if data(i,92)<=3
            fitnessVal = i
            
        end
   % end
end
end

 