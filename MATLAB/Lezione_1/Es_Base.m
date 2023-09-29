% CalcNum01 - Base esercizio
prompt = 'Inserisci un valore\n';
x = input(prompt);
prompt = 'Inserisci un valore per la base\n';
beta = input(prompt);
Convertito=interoDaBase10aBaseB(x,beta);
fprintf('Ciao\n');
fprintf('%s',Convertito);