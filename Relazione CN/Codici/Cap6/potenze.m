function [lambda,numIt] = potenze(A,tol,x0,maxit)
    %[lambda,numIt] = potenze(A,tol,[x0,maxit]) calcola l'autovalore
    %dominante della matrice A.
    %INPUT:
    %A = matrice
    %tol = tolleranza richiesta
    %x0 = vettore iniziale
    %maxit = numero massimo di iterazioni
    %OUTPUT:
    %lambda = autovalore domaninate
    %numIt = numero di iterazioni effettuate
    n = size(A,1);
    if nargin <= 2
        x = rand(n,1);
    else
        x = x0;
    end
    x = x/norm(x);
    if nargin <= 3
        maxit = 100*n*max(round(-log(tol),1));
    end
    lambda = Inf;
    for i=1:maxit
        lambda0 = lambda;
        v = A*x;
        lambda = x'*v;
        err = abs(lambda-lambda0);
        if err <= tol
            break;
        end
        x = v/norm(v);
    end
    if err > tol
        warning('Tolleranza richiesta non raggiunta');
    else
        numIt = i;
    end
end

