function xi = solveSplineNat(b,c,xi)
    % solveSplineNat(b,c,xi) calcola la soluzione
    % del sistema lineare Ax = b dove A fattorizzabile LU
    % INPUT:
    % b = contiene le phi
    % c = contiene le eps
    % xi = contiene le differenze divise
    xi = 6*xi;
    a = ones(length(xi),1)*2;
    n = length(xi);
    for i = 1:n-1
        b(i) = b(i)/a(i);
        a(i+1) = a(i+1)- b(i)*c(i);
    end
    xi(2:n) = xi(2:n) - b(1:n-1) .* xi(1:n-1);
    xi(n) = xi(n)/a(n);
    for i = 1:n-1
        xi(n-i) = (xi(n-i)- c(n-i)*xi(n-i+1))/a(n-i);
    end
end

