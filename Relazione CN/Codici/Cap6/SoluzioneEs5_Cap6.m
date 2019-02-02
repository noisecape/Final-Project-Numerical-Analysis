%Soluzione esercizio 5 cap 6
tol = 10^-5;
A = createSparseMatrix(1000);
x0 = zeros(1000,1);
b = ones(1000,1);
[x,numIt,normRes] = jacobi(A,b,tol,x0);
[x2,numIt2,normRes2] = gaussSeidel(A,b,tol,x0);
hold on;
semilogy(normRes(:,1),normRes(:,2));
semilogy(normRes2(:,1),normRes2(:,2));
legend('Jacobi','Gauss-Seidel');