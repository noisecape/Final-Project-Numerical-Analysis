function xi = solveSplineNaK(phi,eps,xi)
    % mi = solveSplineNaK(phi,eps,xi) calcola la soluzione
    % del sistema lineare Ax = b dove A fattorizzabile LU
    % INPUT:
    % b = contiene le phi
    % c = contiene le eps
    % xi = contiene le differenze divise
    
    xi = [6*xi(1);6*xi;6*xi(length(xi))];
    n = length(eps)+1;
    a = zeros(n+1,1);
    b = zeros(n,1);
    c = zeros(n,1);
    a(1) = 1;
    c(1) = 0;
    b(1) = phi(1)/a(1);
    a(2) = 2-phi(1);
    c(2) = eps(1)-phi(1);
    b(2) = phi(2)/a(2);
    c(3) = eps(2);
    a(3) = 2-(b(2)*c(2));
    for i = 4:n-1 
        b(i-1) = phi(i-1) / a(i-1);
        a(i) = 2 - b(i-1) * c(i-1);  
        c(i) = eps(i-1); 
    end
    
    b(n-1) = (phi(n-1)-eps(n-1))/a(n-1);
    a(n) = 2-eps(n-1)-b(n-1)*c(n-1);
    c(n) = eps(n-1);
    
    b(n) = 0;
    a(n+1) = 1;
    xi(2:n+1) = xi(2:n+1) - b(1:n) .* xi(1:n);
    xi(n+1) = xi(n+1)/a(n+1);
    for i = n:-1:1
        xi(i) = (xi(i)- c(i)*xi(i+1))/a(i);
    end
    xi(1) = xi(1)-xi(2)-xi(3);
    xi(n+1) = xi(n+1)-xi(n)-xi(n-1);
end

