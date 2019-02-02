function x = evaluateSpline(s,xi,x)
    % y = evaluateSpline(s,xi,x) valuta la spline s nei punti
    % contenuti in x
    % INPUT:
    % s = vettore contenente i polinomi che costituiscono la spline
    % xi = n+1 nodi di interpolazione
    % x = valori nel quale voglio valutare la spline
    n = length(xi) - 1;
    z = 1;
    k = 1;
    for i = 1:n
        isInt = 1;
        while k <= length(x) && isInt
            if x(k) >= xi(i) && x(k)<= xi(i+1)
                k = k+1;
            else
                isInt = 0;
            end
        end
        x(z:k-1) = subs(s(i),x(z:k-1));
        z = k;
    end
end

