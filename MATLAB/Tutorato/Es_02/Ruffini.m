close all
clear
clc

%3x^6 -9x^5 +11x^3 -pix^2-2
p = [3 -9 0 11 -pi 0 -2]';
x0=input ('inserire il punto: x0=');
[r,q]=ruffini_horner(p,x0); %valore della funzione in x0
[r2,q2]=ruffini_horner(q,x0); %derivata prima
[r3,q3]=ruffini_horner(q2,x0); %parte della derivata seconda
fprintf('\n Valore del polinomio in x0=%g ',r);
fprintf('\n Valore della derivata prima in x0=%g ',r2);
fprintf('\n Valore della derivata seconda in x0=%g ',2*r3);

%per fare il "limite" piu o meno per calcolare l'infinito
x=linspace(-1000,1000,n);
plot(x,2*abs);