function If = simpcomp(n,a,b,fun)
    %If = simpcomp(n,a,b,fun) calcola l'integrale tra a e b della funzione
    %fun applicando il metodo dei Simpson composito con 2n sottointervalli
    %INPUT:
    %n = numero dei sottointervalli (pari)
    %a = estremo sinistro
    %b = estremo destro
    %fun = funzione da integrare
    %OUTPUT:
    %If = approssimazione dell'integrale di fun
    r = mod(n,2);
    if r ~= 0
        error('Il numero di sottointervalli non è pari');
    end
    x = linspace(a,b,n+1);
    f = feval(fun,x);
    If = 4*sum(f(2:2:n))+2*sum(f(1:2:n+1))-(f(1)+f(end));
    If = If*((b-a)/(3*n));
end

