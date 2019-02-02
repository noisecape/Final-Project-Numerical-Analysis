function [xi,erri] = secantiSolveEs5(alpha,x0,x1,itmax,tol)
    %Funzione che ritorna l'approssimazione della radice
    %della funzione fx data in input usando il metodo delle Secanti
    %INPUT:
    %x0 = punto iniziale dell'iterazione
    %itmax = numero di iterazioni massime
    %fx = funzione data in input
    %f1x = derivata della funzione
    %tol = tolleranza usata per accettare l'approssimazione
    %OUTPUT:
    %y = risultato approssimazione
    %i = numero di iterazioni compiute
    xi = [];
    erri = [];
    i=1;
    xi(i) = x0;
    erri(i) = abs(x0-sqrt(alpha));
    i=i+1;
    xi(i) = x1;
    erri(i) = abs(x1-sqrt(alpha));
    while(i<itmax) && (abs(x1-x0) > tol)
        i = i+1;
        xi(i) = ((x1*x0)+alpha)/(x1+x0);
        erri(i) = abs(xi(i)-sqrt(5));
        x0 = xi(i-1);
        x1 = xi(i);
    end
end