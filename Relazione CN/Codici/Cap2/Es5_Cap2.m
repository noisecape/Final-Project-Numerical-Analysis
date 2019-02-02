fx = @(x) x^2-5;
err = [];
rstApprox = [];
x0 = 5;
x1 = 3;
alpha = 5;
[rstApprox,err] = secantiSolveEs5(alpha,x0,x1,itmax,eps);