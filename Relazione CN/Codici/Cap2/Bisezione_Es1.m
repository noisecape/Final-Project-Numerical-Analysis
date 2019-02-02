function y = Bisezione_Es1(a,b,tol,f)
    %y = Bisezione_Es1(a,b,tol,f) calcola l'approssimazione di una radice
    %della funzione f con tolleranza tol sull'errore, nell'intervallo [a,b]
    fa = feval(f,a);
    fb = feval(f,b);
    if fa*fb >= 0
        warning("Metodo non applicabile");
    end
    y = (a+b)/2;
    fy = feval(f,y);
    max = ceil(log2(b-a)-log2(tol));
    for i = 1:max
        f1x = abs((fb-fa)/(b-a)); %calcolo la derivata prima per sostituire il controllo fx ==0
        if abs(fy)<= tol*f1x
            break;
        elseif fa*fy < 0
            b = y;
            fb = fy;
        else 
            a = y;
            fa = fy;
        end
        y = (a+b)/2;
        fy = feval(f,y);
    end
end

