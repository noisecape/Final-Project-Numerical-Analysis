%soluzione esercizio1 capitolo 2
a = 0;
b =3;
f = @(x) x^3-4*x^2+5*x-2;
f1 = @(x) x^2+2;
tol = 1e-1;
tolx = [];
rstApprox = [];
index = 1;
while tol>eps
    tolx(index) = tol;
    rstApprox(index) = Bisezione_Es1(a,b,tol,f);
    tol = tol/10;
    index = index+1;
end
%si nota che la radice verso il quale tende la successione generata
%dal metodo di bisezione, nell'intervallo [0,3] tende a 2;