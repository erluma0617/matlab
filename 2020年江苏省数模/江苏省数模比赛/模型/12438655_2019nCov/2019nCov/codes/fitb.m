%%求b，推导R0
clear;
clc;


I = [ 0,618,698,1590,1905,2261,2639,3215]';      
t = [1,47,48,49,50,51,52,53]';      

ft = fittype('exp((5*b-1/14)*x)'); % k = 5; D = 14; 
f = fit(t,I,ft, 'Startpoint', 0.1)
plot(f,t,I, '*')
