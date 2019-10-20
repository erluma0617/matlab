[Acc Force]=acc(20,10,5,4,1)
function [a F]=acc(v2,v1,t2,t1,m)
a=(v2-v1)./(t2-t1);
F=m.*a;
end
