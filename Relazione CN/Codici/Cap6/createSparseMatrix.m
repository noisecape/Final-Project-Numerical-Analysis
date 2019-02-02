function A = createSparseMatrix(n)
    %A = createSparseMatrix(n) crea una matrice sparsa
    %INPUT
    %n = grado della matrice
    %OUTPUT
    %A = matrice sparsa n*n in cui:
    %a(i,j) = 4 se i=j
    %a(i,j) = -1 se i=j+-1
    %a(i,j) = -1 se i=j+-10
    if n <= 10
        error('n deve essere maggiore di 10');
    end
    e = ones(n,1);
    A = [-1*e 4*e -1*e -1*e -1*e];
    A = spdiags(A,[-1:1,-10, 10],n,n);
end

