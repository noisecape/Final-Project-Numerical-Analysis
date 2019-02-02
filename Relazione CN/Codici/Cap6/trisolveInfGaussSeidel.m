function x = trisolveInfGaussSeidel(A,b)
    %x = trisolveInfGaussSeidel(A,b)
    %La funzione restituisce la soluzione del sistema lineare Ax = b
    %INPUT:
    %A = matrice triangolare inferiore
    %b = vettore termini noti
    %OUTPUT:
    %x = vettore soluzione
    x = b;
    [m,n] = size(A);
    if m~=n
        error('Matrice non quadrata');
    end
    for i = 1:n
        x(i) = x(i)/A(i,i);
        x(i+1:n) = x(i+1:n)-x(i)*A(i+1:n,i);
    end
end