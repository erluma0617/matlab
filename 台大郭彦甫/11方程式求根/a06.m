syms x;
y=x^2*exp(x);
z=int(y);
z=z-subs(z,x,0)