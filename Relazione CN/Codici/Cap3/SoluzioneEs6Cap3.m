%Soluzione es6 Capitolo 3

A = [10^-13 1; 1 1];
A = luFactorization(A);
L = tril(A,-1)+eye(length(A));
U = triu(A);
e = ([1 1])';
b = A*e;
gSp = U\(L\b); %Gauss senza pivoting
gP = A\b; %Gauss con pivoting
