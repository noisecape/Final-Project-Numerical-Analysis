function If = trapcomp(n,a,b,fun)
    %If = trapcomp(n,a,b,fun) calcola l'integrale tra a e b della funzione
    %fun applicando il metodo dei trapezi composito con n sottointervalli
    %INPUT:
    %n = numero dei sottointervalli
    %a = estremo sinistro
    %b = estremo destro
    %fun = funzione da integrare
    %OUTPUT:
    %If = approssimazione dell'integrale di fun
    x = linspace(a,b,n+1);
    f = feval(fun,x);
    If = ((b-a)/n)*(sum(f)-0.5*(f(1)+f(end)));
end

