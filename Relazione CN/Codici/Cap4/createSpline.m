function s = createSpline(mi,fi,xi)
    % s = createSpline(mi,fi,xi) calcola i polinomi che costituiscono la
    % spline cubica
    % INPUT:
    % mi = derivata seconda della spline spline cubica calcolata in xi
    % xi = nodi di interpolazione
    % fi = valori della funzione calcolata in xi
    n = length(xi);
    s = sym('x',[n-1 1]); 
    syms x;
    for i = 2:n
        hi = xi(i)-xi(i-1);
        ri = fi(i-1)-((hi^2)/6)*mi(i-1);
        qi = ((fi(i)-fi(i-1))/hi)-(hi/6) * (mi(i)-mi(i-1));
        s(i-1) = (((x-xi(i-1))^3)*mi(i)+((xi(i)-x)^3)*mi(i-1))/(6*hi);
        s(i-1) = s(i-1)+qi*(x-xi(i-1))+ri;
    end
end

