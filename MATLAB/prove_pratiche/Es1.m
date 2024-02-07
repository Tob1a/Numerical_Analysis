close all
clear
clc
z=zeros(1,7);
x0=input("Inserire il punto x0 (double): \n");
z(8)= min(exp(-2),max(sin(7.2*pi),3.1)+1/2);%c0
z(7)=sqrt(log10(factorial(7))); %c1
z(6)=tan((pi/3)-log2(4.17)); %c2
x(4)=55/100*abs(sin(5*pi/8)*exp(1/3)); %c4
x(3)=max([3.7*10^(-2), tan(2*pi), -log10(0.314), 0.7/pi^(3)]); %c5
x(2)=cos(3*asin(-sqrt(exp(1)/pi))); %c6

[a, c]= ruffiniHorner(z,x0);
fprintf("Nel punto x0= %g p(x0)= %g\n",x0,a);
[de1, d1]= ruffiniHorner(a,x0);
[de2, d2]= ruffiniHorner(de1,x0);
fprintf("derivata prima nel polinomio p(x0)= %g\n",de1);
fprintf("derivata seconda nel polinomio p(x0)= %g\n",de2*2); %ricordati il *2
f=fplot(@(x) (polyval(z,x)),[-0.5,1.4]);

