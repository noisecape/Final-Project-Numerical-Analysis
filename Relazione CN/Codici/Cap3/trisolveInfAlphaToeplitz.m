function x = trisolveInfAlphaToeplitz(dim,b,alpha)
    %x = trisolveInfAlphaToeplitz(dim,b,alpha);
    %La funzione crea una matrice bidiagonale inferiore a diagonale unitaria
    %di Toeplitz ed infine restituisce la soluzione del sistema lineare Ax = b
    %INPUT:
    %dim = dimensione della matrice
    %b = vettore termini noti
    %alpha = scalare sotto la diagonale
    %OUTPUT:
    %x = vettore soluzione

    A = eye(dim);
    %zeros(1,dim) crea un vettore riga di dim elementi; eye(dim-1) zeros(1,dim-1)'
    %crea una matrice dim-1*dim-1 con un 1 sulla diagonale, e infine si concatena con la matrice dimxdim
    B = alpha*[zeros(1,dim);eye(dim-1) zeros(1,dim-1)'];
    A = A+B;

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
