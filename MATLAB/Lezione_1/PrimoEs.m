% CalcNum01 - Primo esercizio
%   Descrizione lunga ...
% Versione 1.0.1

%Tobia Sacchetto

cb_browseCustomFile
a=3+2;
z=rand(6,1)*26 -4; %tutti numeri compresi tra meno 8 e 1 
%matlab fa l'allocazione con la malloc automatica
% le mfunction inizano con la riga function e funziona come in c: Matlab
% crea uno spazio esclusivo per la ram esempio una a dentro alla function e
%' diversa da una fuori dalla function e si pulisce la funzione con clear
%all che cancella tutte le variabili


ver; %visualizzazione dei toolbox installati
fprintf('\n\n Messagio molto luuuuuuuuuuuuuungo');
fprintf('\n\n%s%s', ...
        'Messagio molto luuuuuuuuu',... %commento
        'uuuuungo');

keyboard %serve per far partire il debuging da qui (si chiamano breakpoint statici)
