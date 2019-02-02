%Soluzione esercizio7 cap3
b = ones(1,12)';
b(2:12) = b(2:12)*101;
b1 = b*0.1;

x = trisolveInfAlphaToeplitz(12,b,100);
x1 = trisolveInfAlphaToeplitz(12,b1,100);


dim = 12;
A = eye(dim);
B = 100*[zeros(1,dim);eye(dim-1) zeros(1,dim-1)']; %zeros(1,dim) crea un vettore riga di dim elementi; eye(dim-1) zeros(1,dim-1)' crea una matrice dim-1*dim-1 con un 1 sulla diagonale, e infine si concatena con la matrice dimxdim
A = A+B;
%Condizionamento matrice
condA = norm(A,Inf)* norm(inv(A),Inf);
%Condizionamento del risultato caso 2
x1esatto = (ones(1,12)*0.1)';
b1esatto = A*x1esatto;
errAbsB = abs(b1esatto-b1);
condB = norm(errAbsB,Inf)/norm(b1esatto,Inf);
errX = condA*condB;
