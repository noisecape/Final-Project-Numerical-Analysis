% Soluzione Cap_2 Es_2.
%
% -f: polinomio;
% -f1x: derivata prima del polinomio;
% -tol: tolleranza;
% -t: vettore contenente i valori di tolleranza ad ogni passo;
% -n: vettore contenente i valori del metodo di newton ad ogni passo;
% -c: vettore contenente i valori del metodo delle corde ad ogni passo;
% -s: vettore contenente i valori del metodo delle secanti ad ogni passo.

f = @(x) x^3-4*x^2+5*x-2;
f1x = @(x) 3*x^2-8*x+5;
tol = 10^-1;
t = [];
n = [];
c = [];
s = [];
j = 1;

% Iterazione fino a una tolleranza di 10^(-17)

while tolx>10^(-17)
    t(j) = tolx;
    n(j) = newtonSolve(3, 1000, f, f1x, tol);
    c(j) = cordeSolve(3, 1000, f, f1x, tol);
    s(j) = secantiSolve(3, 1000, f, f1x, tol);
    tol = tol/10;
    j = j+1;
end
