function If = simpad(a,b,fun,tol,fa,fb,fc)
    %If = trapad(a,b,fun,tol[,fa,fb,fc]) calcola l'integrale della funzione
    %fun utilizzando la formula di Simpson adattiva nell'intervallo [a,b]
    %con tolleranza tol
    %INPUT:
    %a = estremo sinistro
    %b = estremo destro
    %fun = funzione da integrare
    %tol = tolleranza sull'errore
    c = (a+b)/2;
    if nargin <= 4
        fa = feval(fun,a); 
        fb = feval(fun,b);
        fc = feval(fun,c);
    end
    x1 = (a+c)/2;
    x2 = (b+c)/2;
    f1 = feval(fun,x1);
    f2 = feval(fun,x2);
    h = (b-a)/6;
    I1 = h*(fa+(4*fc)+fb);
    If = (0.5*h)*(fa+(4*f1)+(2*fc)+(4*f2)+fb);
    err = abs(I1-If)/15;
    if err > tol
        t1 = simpad(a,c,fun,tol/2,fa,fb,f1);
        t2 = trapad(c,b,fun,tol/2,fc,fb,f2);
        If = t1+t2;
    end
end

