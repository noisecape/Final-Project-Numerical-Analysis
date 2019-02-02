function [y,i] = Aitken(x0,fx,f1x,itmax,tol)
    %Funzione che ritorna l'approssimazione della radice
    %della funzione fx data in input usando il metodo di accelerazione
    %di Aitken
    %INPUT:
    %x0 = punto iniziale dell'iterazione
    %itmax = numero di iterazioni massime
    %fx = funzione data in input
    %f1x = derivata della funzione
    %tol = tolleranza usata per accettare l'approssimazione
    %OUTPUT:
    %y = risultato approssimazione
    %i = numero di iterazioni compiute
    i = 0;
    y = x0;
    flag = 1;
    while (i<itmax) && flag
        i = i+1;
        x0 = y;
        tempFx = feval(fx,x0);
        tempF1x = feval(f1x,x0);
        x1 = x0-(tempFx/tempF1x);
        tempFx = feval(fx,x1);
        tempF1x = feval(f1x,x1);
        y = x1-(tempFx/tempF1x);
        if(y-(2*x1)+x0) == 0
            flag = 0;
            i = i-1;
            break;
        end
        y = ((y*x0)-x1^2)/((y-(2*x1))+x0);
        flag = abs(y-x0)>tol;
    end
    if flag
        warning('Tolleranza non raggiunta');
    end       
end

