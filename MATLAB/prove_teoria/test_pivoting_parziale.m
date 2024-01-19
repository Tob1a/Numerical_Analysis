F=P1*Aoriginal;
h=P1*boriginal;
for j=1:4
    F(2,j)=A(2,j)-(-4/6)*A(1,j);
    F(3,j)=A(3,j)-(-1/6)*A(1,j);
end
h(2,1)=b(2,1)-(-4/6)*b(1,1);
h(3,1)=b(3,1)-(-1/6)*b(1,1);

F=P2*F;
h=P2*h;

for j=2:4
    F(3,j)=F(3,j)-(19/28)*F(2,j);
end
h(3,1)=h(3,1)-(19/28)*h(2,1);

F=P3*F;
h=P3*h;

for j=3:4
    F(4,j)=F(4,j)-(28/129)*F(3,j);
end
h(4,1)=h(4,1)-(28/129)*h(3,1);

[L,R,deter]=pivoting_parziale(Aoriginal);