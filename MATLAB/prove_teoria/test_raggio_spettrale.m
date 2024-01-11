% Definizione del valore lambda
lambda = 2;

% Calcolo dell'identità (matrice 3x3 con diagonale principale uguale a 1)
I = eye(3);

% Calcolo della differenza |J - lambda*I|
result = abs(J - lambda * I);

% Visualizzazione del risultato
disp('|J - lambda*I|:');
disp(result);