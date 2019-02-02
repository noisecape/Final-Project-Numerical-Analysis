%Soluzione esercizio 9 cap3
% esempio 1
A1 = [3 2 1; 1 2 3; 1 2 1; 2 1 2];
b1 = [10 10 10 10];
[m1,n1] = size(A1);
x1 = A1\b1';
A1 = QRFatt(A1);
rst1 = SolveLeastSquares(A1,b1,m1,n1);

% esempio 2
A2 = [1 1 1; 1 2 4; 1 -1 1; 1 -2 4];
b2 = [1 1 1 2];
[m2,n2] = size(A2);
x2 = A2\b2';
A2 = QRFatt(A2);
rst2 = SolveLeastSquares(A2,b2,m2,n2);
