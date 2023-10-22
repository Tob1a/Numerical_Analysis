syms x;
f=(power(pi*exp(1),1/5))*atan(x);
z=diff(f,x,1);
disp(vpa(z));



