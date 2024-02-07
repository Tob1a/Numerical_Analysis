close all
clear
clc
A = [1 3 -1; 1 2 0.5; 5 10 -1];
b=[-2 1/2 -1]';
[L, R, P, det]=gauss2(A);
y=sollower(L,(b(P)));
x=solupper(R,y);
residuonorm= norm(b-A*x, inf)/norm(b, inf);
fprintf("il residuo normalizzato e' %g\n",residuonorm);
[L1, R1, P1]=lu(A);
P2=eye(3);
P2=P2(P,:);
fprintf("residuo di L = max(|L-L1|) = %g\n",max(abs(L(:)-L1(:))));
fprintf("residuo di R = max(|R-R1|) = %g\n",max(abs(R(:)-R1(:))));
fprintf("residuo di P = max(|P=P1|) = %g\n",max(abs(P2(:)-P1(:))));

