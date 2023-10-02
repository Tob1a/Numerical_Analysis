function [convertito] = InteroDaBase10aBaseBv2(x,beta)
%InteroDaBase10aBaseBv2 Conversione di un intero da base 10 a base beta>1
%   Versione 1.1 della parte precedente
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
    error('Errore base beta');
end
p=x;
convertito='';
i=0;
while (p~=0)&&(i < N)
    r=fix(p*beta); %parte intera
    p=p*beta-r; %parte frazionaria
    convertito = strcat(convertito,d(r+1));
    i=i+1;
end
display(convertito);
end