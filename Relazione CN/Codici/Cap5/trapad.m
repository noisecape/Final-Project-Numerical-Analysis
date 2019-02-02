function If = trapad(a,b,fun,tol,fa,fb)
    %If = trapad(a,b,fun,tol[,fa,fb]) calcola l'integrale della funzione
    %fun utilizzando la formula dei trapezi adattiva nell'intervallo [a,b]
    %con tolleranza tol
    %INPUT:
    %a = estremo sinistro
    %b = estremo destro
    %fun = funzione da integrare
    %tol = tolleranza sull'errore
    if nargin == 4
        fa = feval(fun,a); 
        fb = feval(fun,b);
    end
    x = (a+b)/2;
    fx = feval(fun,x);
    I1 = ((b-a)*(fa+fb))/2;
    If = (I1+(b-a)*fx)/2;
    err = abs(I1-I)/3;
    if err > tol
        t1 = trapad(a,x,fun,tol/2,fa,fx);
        t2 = trapad(x,b,fun,tol/2,fx,fb);
        If = t1+t2;
    end
end

