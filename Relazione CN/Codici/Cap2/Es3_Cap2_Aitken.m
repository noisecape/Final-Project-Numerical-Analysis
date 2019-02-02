%soluzione esercizio3, capitolo 2 Aitken
fx = @(x) x^3-4*x^2+5*x-2;
f1x = @(x) 3*x^2-8*x+5;
tol = 1e-1;
rstApprox = [];
numIt = [];
index = 1;
itmax = 2000;
x0=0;
while tol>eps
    [rstApprox(index),numIt(index)] = Aitken(x0,fx,f1x,itmax,tol)
    index = index+1;
    tol = tol/10;
end