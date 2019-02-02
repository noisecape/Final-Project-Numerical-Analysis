function [xi,erri] = newtonSolveEs4(alpha,x0,tol,itmax)
    %Funzione che ritorna l'approssimazione della radice
    %della funzione fx data in input usando il metodo di Newton
    %INPUT:
    %x0 = punto iniziale dell'iterazione
    %itmax = numero iterazioni massime da effettuare
    %fx = funzione data in input
    %f1x = derivata della funzione
    %tol = tolleranza usata per accettare l'approssimazione
    %OUTPUT:
    %xi = vettore contente le approssimazioni al passo i-esimo
    %erri = vettore contente gli errori al passo i-esimo
    xi = [];
    erri = [];
    i = 2;
    xi(i-1) = x0;
    erri(i-1) = abs(x0-sqrt(x0));
    xi(i) = 0.5*(x0+(alpha/x0));
    erri(i) = abs(xi(i)-sqrt(x0));
    while i < itmax && abs(x0-xi(i)) > tol
        x0 = xi(i);
        i=i+1;
        xi(i) = 0.5*(x0+(alpha/x0));
        erri(i) = abs(xi(i)-sqrt(5));
    end
end

