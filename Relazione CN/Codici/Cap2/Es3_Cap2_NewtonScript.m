%script esecuzione newton
tolx = 10^-1;
tol = 1e-1;
fx = @(x) x^3-4*x^2+5*x-2;
f1x = @(x) 3*x^2-8*x+5;
x0 = 0;
itmax = 1000;
rstApprox = [];
numIt = [];
index = 1;
while tol>eps
	[rstApprox(index),numIt(index)] = newtonSolve(x0,itmax,fx,f1x,tol);
    index = index+1;
    tol = tol/10;
end    