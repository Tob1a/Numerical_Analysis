%% Metodi per fare calcoli su matlab
%esempio matrice A
A = [4, 3; 2, 1];
[L, U, P] = lu(A); %sarebbe la matrice L*U*P dove L sai che e' inferiore U e' superiore e p e' permutazione (righe)
[Q, R] = qr(A); %sarebbe la matrice Q*R dove Q=G! mentre R sai cosa e'
%la diade e' la matrice A= c*b';
numel([ciao, 3, 5]); %conta il numero di elementi presenti in un array
find(A); % trova gli elementi di un array diversi da 0
utrisol() %serve per trovare la soluzione ad un sistema triangolare superiore
%per calcolare il sistema Q*b dove sai cos'e' Q. devo fare Q'*b

normaInf = norm(A, inf); %guardati la norma
rango = numel( find(abs(diagonaleR) > eps*normaInf) ); %per trovare il rango di una matrice
deter = prod( diagonaleR ); %calcolo determinante
norm ( b - A * x1 , inf ) / norm (b , inf ); %residuo normalizzato dove x1 = solupper ( R , sollower (L , b ( p )) )
residuo = b - A * x1;
normaInfTermNoto = norm (b , inf ) ;
