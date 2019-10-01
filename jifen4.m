
function [y]=xy_plot(input,x)
%xy_plot receives the handle of a function and plots that function of x
y=input(x);
plot(x,y,'r--');
xlabel('x');
ylabel('function(x)');
end