function [y,i] = newtonMod(x0,itmax,fx,f1x,m,tol)
    %Funzione che ritorna l'approssimazione della radice
    %della funzione fx data in input usando il metodo di Newton modificato
    %INPUT:
    %x0 = punto iniziale dell'iterazione
    %itmax = numero di iterazioni massime
    %fx = funzione data in input
    %f1x = derivata della funzione
    %tol = tolleranza usata per accettare l'approssimazione
    %m = molteplicita della radice
    %OUTPUT:
    %y = risultato approssimazione
    %i = numero di iterazioni compiute

    tempFx = feval(fx,x0);
    tempF1x = feval(f1x,x0);
    y = x0-m*(tempFx/tempF1x);
    i = 1;
    while (i < itmax) && (abs(y-x0) > tol)
        i = i+1;
        x0 = y;
        tempFx = feval(fx,x0);
        tempF1x = feval(f1x,x0);
        y = x0-m*(tempFx/tempF1x);
    end
    if abs(y-x0) > tol
        warning('La funzione non converge alla radice');
    end
end