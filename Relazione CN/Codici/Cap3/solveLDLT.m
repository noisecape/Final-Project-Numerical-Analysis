function x = solveLDLT(A,b)
    %x = solveLDLT(A,b)
    %Restituisce il vettore soluzione del sistema lineare Ax = b
    %fattorizzando la matrice A = LDLT
    %Per la soluzione finale ci riconduciamo a risolvere i seguenti sistemi
    %lineari: 1) Ly = b 2) Dz = y 3) LTx = z
    %INPUT:
    %A = matrice sdp
    %b = vettore termini noti
    %OUTPUT:
    %x = vettore soluzione
    A = LDLTFatt(A);
    x = trisolveInf(tril(A,-1)+eye(length(A)),b); % restituisce la soluzione della matrice triangolare inferiore (tril(A,-1)) a diagonale unitaria eye(length(A)
    x = x ./ (diag(A))';
    x = trisolveSup((tril(A,-1)+eye(length(A)))',x);
end
