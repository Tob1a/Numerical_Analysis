function [STR]=conv10toBETA_fraz(alpha,beta,n)

if (~ isnumeric(alpha) || (alpha>=1) || (alpha<0)) %la ~ vuol dire se != (quindi se una di queste e' vera allora mi passa l'error
    error('alpha deve essere un numero decimale positivo');
end
if (~ isnumeric(beta) || (beta ~= fix(beta)) || (beta<2) || (beta>36)) %
    error('beta deve essere un numero intero positivo fra 2 e 36');
end
d=char([double('0'):double('9'),double('A'):double('Z')]);
STR="0.";
i=0;
p=alpha;

while((i<n) || (p ~=0))
    r=fix(fix(p*beta));
    p=p*beta-r;
    %STR =  strcat(STR,d(r+1));
    STR = STR + d(r+1);
    i=i+1;
end
disp(STR);
end