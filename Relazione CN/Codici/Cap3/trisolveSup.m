function x = trisolveSup(A,b)
%La funzione restituisce la soluzione del sistema lineare Ax = b
%INPUT:
%A = matrice triangolare superiore a diagonale unitaria
%b = vettore termini noti
%OUTPUT:
%x = vettore soluzione
    x = b;
    [m,n] = size(A);
    if m~=n
        error('Matrice non quadrata');
    end
    if A(n,n) == 0
        error('Matrix not upper triangular');
    else
        x(n) = x(n) /A(n,n);
    end
    for i = n-1:-1:1
        for j = n:-1:i+1
            x(i) = x(i) - A(i,j)*x(j);
        end
        x(i) = x(i)/A(i,i);
    end
end
