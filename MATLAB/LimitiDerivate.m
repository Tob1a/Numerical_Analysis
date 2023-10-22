%assicurati di aver installato il pacchetto Symbolic Matlab
%calcolare una derivata

%identifica la variabile simbolica per l'espressione
syms x;
%l'espressione della derivata
f=6*x^2;
%calcolo
z=diff(f,1);

disp(z);

%derivata seconda
d2f = diff(z, 1);
disp(d2f);
f=@(x) 6*x^2;

%per calcolare un limite

%definire la variabile simbolica per l'espressione
syms x;
%l'espressione
f = (x^2 - 4) / (x - 2);
%calcolo
limite = limit(f, x, 2);
disp(limite);

%limite che tende a +infinito
limite_infinito = limit(f, x, inf);
disp(limite_infinito);