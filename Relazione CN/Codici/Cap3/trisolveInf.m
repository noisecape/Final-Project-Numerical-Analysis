function x = trisolveInf(A,b)
    %x = trisolveInf(A,b);
    %La funzione restituisce la soluzione del sistema lineare Ax = b
    %INPUT:
    %A = matrice triangolare inferiore a diagonale unitaria
    %b = vettore termini noti
    %OUTPUT:
    %x = vettore soluzione
    x = b;
    [m,n] = size(A);
    if m~=n
        error('Matrice non quadrata');
    end
    for i=1:n
        if A(i,i) ~= 1
            error("Matrice non a diagonale unitaria");
        end
    end
    for i = 1:n
        for j = 1:i-1
            x(i) = x(i)-A(i,j)*(x(j));
        end
        x(i) = x(i)/A(i,i);
    end
end
