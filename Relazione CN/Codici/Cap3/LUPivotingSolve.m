function x = LUPivotingSolve(A,b)
    %x = LUPivotingSolve(A,b)
    %Calcola il vettore soluzione del sistema lineare Ax = b con matrice
    %fattorizzata LU con pivoting.
    %INPUT:
    %A = matrice
    %b = vettore termini noti
    %OUTPUT:
    %x = vettore soluzione
    [A,p] = LUPivoting(A);
    x = trisolveInf(tril(A,-1)+eye(length(A)),b);
    x = trisolveSup(triu(A),x);
end
