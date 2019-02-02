function [y,i] = cordeSolve(x0,itmax,fx,f1x,tol)
    %Funzione che ritorna l'approssimazione della radice
    %della funzione fx data in input usando il metodo delle Corde
    %INPUT:
    %x0 = punto iniziale dell'iterazione
    %itmax = numero di iterazioni massime
    %fx = funzione data in input
    %f1x = derivata della funzione
    %tol = tolleranza usata per accettare l'approssimazione
    %OUTPUT:
    %y = risultato approssimazione
    %i = numero di iterazioni compiute

    tempFx = feval(fx,x0);
    f1x = feval(f1x,x0);
    y = x0-(tempFx/f1x);
    i = 1;
    while (i < itmax) && (abs(y-x0) > tol)
        i = i+1;
        x0 = y;
        tempFx = feval(fx,x0);
        y = x0-(tempFx/f1x);
    end
    if abs(y-x0) > tol
        warning('La funzione non converge alla radice');
    end
end
