function y = newton(xi,fi,x)
    % y = newton(xi,fi,x)
    % Calcola il polinomio interpolante le coppie di dati (xi,fi)
    % sui punti del vettore x.
    % INPUT:
    % xi = vettore contenente le ascisse di interpolazione su cui calcolare la differenza divisa
    % fi = vettore contenente i valori assunti dalla funzione nei corrispondenti punti xi
    % x = vettore di punti sui quali valutare il polinomio interpolante
    % OUTPUT:
    % y = vettore contenente il valore del polinomio interpolante
    
    n = length(xi)-1; %grado del polinomio interpolante
    for j = 1:n
        for i = n+1:-1:j+1
            fi(i) = (fi(i) - fi(i-1))/(xi(i) - xi(i-j));
        end
    end
    y = fi(n+1)*ones(size(x));
    for i = n:-1:1
        y = (y.*(x-xi(i))+fi(i));
    end
end