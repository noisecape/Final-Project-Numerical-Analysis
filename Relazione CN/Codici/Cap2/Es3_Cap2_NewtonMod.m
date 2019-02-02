%soluzione esercizio3, capitolo 2 Newton Modificato
fx = @(x) x^3-4*x^2+5*x-2;
f1x = @(x) 3*x^2-8*x+5;
tol = 1e-1;
m = 2;
rstApprox = [];
numIt = [];
index = 1;
itmax = 2000;
x0=0;
while tol>eps
    [rstApprox(index),numIt(index)] = newtonMod(x0,itmax,fx,f1x,m,tol);
    index = index+1;
    tol = tol/10;
end