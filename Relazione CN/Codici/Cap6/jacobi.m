function [x,numIt,normRes] = jacobi(A,b,tol,x0)
    %[x,numIt,normRes] = jacobi(A,b,tol,[x0]) calcola la soluzione del sistema
    %lineare sparso Ax = b utilizzando il metodo iterativo di Jacobi con
    %tolleranza tol
    %INPUT:
    %A = matrice sparsa
    %b = vettore termini noti
    %tol = tolleranza richiesta
    %x0 = vettore iniziale
    %OUTPUT:
    %x = soluzione del sistema lineare sparso
    %numIt = numero di iterazioni effettuate
    n = length(b);
    if nargin <= 3
        x = zeros(n,1);
    else
        x = x0;
    end
    D = diag(A);
    maxit = 100*n*max(1,-log(tol));
    normRes = zeros(round(maxit),2);
    for i = 1:maxit
        r = b-(A*x);
        err = norm(r,inf);
        normRes(i,1) = i;
        normRes(i,2) = err;
        if err <= tol
            break;
        end
        x = x + r./D;
    end
    if err > tol
        warning('Tolleranza richesta non raggiunta');
    else
        numIt = i;
    end
end

