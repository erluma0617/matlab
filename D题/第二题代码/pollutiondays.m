clear;
close all;
clc;

data=xlsread('¸÷Çøpm2.5.xlsx');

for ii=1:13
    n1=0;
    n2=0;
    n3=0;
    n4=0;
    n5=0;
    n6=0;
    for j=1:116
        x=data(:,ii);
        if x(j)/50<=1
            n1=n1+1;
        elseif x(j)/50<=2
            n2=n2+1;
        elseif x(j)/50<=3
            n3=n3+1;
        elseif x(j)/50<=4
            n4=n4+1;
        elseif x(j)/50<=5
            n5=n5+1;
        else
            n6=n6+1;
        end
    end
    n1;
    n2;
    n3;
    n4;
    n5;
    n6;
    n=(1*n1+2*n2+3*n3+4*n4+5*n5+6*n6)/100
end

