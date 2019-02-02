function [x,numIt,normRes] = gaussSeidel(A,b,tol,x0)
	%[x,numIt,normRes] = gaussSeidel(A,b,tol,x0) risolve il sistema lineare Ax=b
	%con il metodo di Gauss-Seidel
    %INPUT:
    %A = matrice sparsa
    %b = vettore dei termini noti
    %tol = tolleranza richiesta
    %x0 = vettore iniziale
    %OUTPUT:
    %x = soluzione del sistema lineare sparso
    %numIt = numero di iterazioni
    n = length(b);
    if nargin <= 3
        x = zeros(n,1);
    else
        x = x0;
    end
    maxit = 100*max(1,-ceil(log(tol)))*n;
    err = inf;
    for i=1:maxit
        r = (A*x)-b;
        err = norm(r,inf);
        normRes(i,1) = i;
        normRes(i,2) = err;
        if err <= tol
            break;
        end
        r = trisolveInfGaussSeidel(A,r);
        x = x-r;
    end
    if err > tol
        warning('Tolleranza richiesta non raggiunta');
    else
        numIt = i;
    end
end

