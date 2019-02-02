%Soluzione esercizio 8 cap3
A = [3 2 1; 1 2 3; 1 2 1; 2 1 2];
b = [10 10 10 10];
[m,n] = size(A);
x1 = A\b';
A = QRFatt(A);
x = SolveLeastSquares(A,b,m,n);
