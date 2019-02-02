%Soluzione esercizio 5

%Esempio esercizio 3: LDLT
xc = ([64 8 13])';
A = [11 4 -2;6 7 -1;5 1 12];
b = A * xc;


x = solveLDLT(A,b);
condA = cond(A);
normaR = norm((A*x)-b);
normaRB = normaR/norm(b);
errRel = norm(x-xc)/norm(xc);

%Esempio esercizio 4: LU
xc1 = ([64 8 13])';
A1 = [11 4 -2;6 7 -1;5 1 12];
b1 = A1 * xc1;

x1 = LUPivotingSolve(A1,b1);
condA1 = cond(A1);
normaR1 = norm((A1*x1)-b1);
normaRB1 = normaR1/norm(b1);
errRel1 = norm(x1-xc1)/norm(xc1);
