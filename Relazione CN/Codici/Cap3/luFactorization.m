function A = luFactorization(A)
    % A = luFactorization(A) restuisce la matrice A fattorizzata LU
    % INPUT:
    %A = matrice nxn nonsingolare
    %A = matrice A = LU
    m = size(A,1);
    n = size(A,2);
    if m ~= n
        error ('Matrice non quadrata');
    end
    for i = 1:n-1
        if A(i,i) == 0
            error('Matrice non fattorizzabile LU')
        end
        A(i+1:n,i) = A(i+1:n,i)/A(i,i);
        A(i+i:n,i+i:n) = A(i+1:n, i+1: n) - A(i+1:n,i)* A(i,i+1:n);
    end
    return
end
