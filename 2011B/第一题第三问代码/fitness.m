
function fitnessVal = fitness( i)
clc;

data=xlsread('A���������·������.xlsx');

for i=21:92
   % for j=21:92
        if data(i,92)<=3
            fitnessVal = i
            
        end
   % end
end
end

 