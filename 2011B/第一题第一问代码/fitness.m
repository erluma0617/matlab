function fitnessVal = fitness( data)

%��Ԫ�����Ż���
data=xlsread('A���������·������.xlsx');
%i=1;
%j=1;
for i=1:20
    for j=21:92
        fitnessVal =data(i,j)-1.1 
    end
end
end

 