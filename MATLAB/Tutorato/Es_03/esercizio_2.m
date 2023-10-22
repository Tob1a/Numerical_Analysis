close all
clear all
clc

A=[3,4,1;6,9,2;5,2,8];
Ainv=inv(A); %e' ok ma costa troppo quindi NO!
B=[10,0,0;0,7,0;0,0,15];
Binv=diag([1/B(1,1),1/B(2,2),1/B(3,3)]);
C=[20,1,7;0,2,17;0,0,3];
Cinv=invupper(C);
D=C';
Dinv=Cinv';