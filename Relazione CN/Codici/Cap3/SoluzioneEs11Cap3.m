%Soluzione esercizio 11
%f(x1,x2) = x1^2+x2^3-x1*x2
minRel = [1/12;1/6];
x = [1/2;1/2];
F = @(x) [2*x(1)-x(2), 3*x(2)^2-x(1)];
J = [2-x(2), 2*x(1)-1; 3*x(2)^2-1, 6*x(2)-x(1)];

tol = 10^-3;
[x1,norma,it] = solveNewtonNonLineare(F,x,J,tol,100);
err1 = norm(minRel-x1);

tol = 10^-6;
[x2,norma2,it2] = solveNewtonNonLineare(F,x,J,tol,100);
err2 = norm(minRel-x2);