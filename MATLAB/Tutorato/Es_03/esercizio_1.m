clear all
close all
clc
x=[-2,-1,0,1,2];
y_sin=my_sin(x);
y_cos=my_cos(x);
y_cos_true=cos(x);
y_sin_true=sin(x);

%errore assoluto
ea_sin =abs(y_sin_true-y_sin);
ea_cos=abs(y_cos_true-y_cos);

%errore relativo
er_sin = ea_sin./abs(y_sin_true);
er_cos = ea_cos./abs(y_cos_true);
% il ./ serve per non farmi stampare il risultato come una singola cifra

%il percento e serve per il valore esponenziale
fprintf('Errore assoluto seno: %e\n',ea_sin);
fprintf('Errore assoluto coseno: %e\n',ea_cos); 
fprintf('Errore relativo seno: %e\n',er_sin);
fprintf('Errore relativo coseno: %e\n',er_cos);