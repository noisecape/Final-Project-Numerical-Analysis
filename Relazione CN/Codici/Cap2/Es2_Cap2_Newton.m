%soluzione esercizio 2, capitolo2 metodo newton
a = 0;
b = 3;
tol = 1e-1;
index = 1;
fx = @(x) x^3-4*x^2+5*x-2;
f1x = @(x) 3*x^2-8*x+5;
itmax = 2000;
x0 =3;
rstApprox = [];
numIt = [];
while tol>eps
    [rstApprox(index),numIt(index)] = newtonSolve(x0,itmax,fx,f1x,tol);
    index = index+1;
    tol = tol/10;
end