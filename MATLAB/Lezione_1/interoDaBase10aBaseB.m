function [convertito] = interoDaBase10aBaseB(x, beta)
%UNTITLED2 Conversione di un intero da base 10 a base beta>1
%   Conversione mediante il metodo delle divisioni successive del numero x
%   da base 10 a base beta......
%
% SYNOPSYS:
%   [ convertito ] = interoDaBase10aBaseB( x, beta ) (cosa devi mettere in
%   ingresso e cosa devi mettere in uscita
% INPUT
%   x          (double)    - Numero INTERO in base 10 da convertire
%   beta       (integer)   - Nuova base a cui convertire il numero:
%                           intero > 1
% OUTPUT
%   convertito (string)    - Stringa contente il numero convertito nella base 
%                            beta inviata

if(beta<=1)
    fprintf("Errore base beta");
    error('Errore base beta');
end
h=1;
convertito = "";
while x+1>=beta
    cifra = mod(x,beta);
    convertito(h) = cifra;
    h=h+1; 
    x = x - cifra;
    x = x / beta;
end
convertito=flip(convertito);
end