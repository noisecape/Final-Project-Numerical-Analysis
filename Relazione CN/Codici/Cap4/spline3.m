function y = spline3(xi,fi,x,tipo)
    % y = spline3(xi,fi,x,tipo) calcola la spline cubica specificata dal
    % parametro tipo
    %INPUT:
    %xi = n+1 nodi di interpolazione
    %fi = valori della funzione calcolata in xi
    %x = vettore di valori nel quale voglio calcolare la spline
    %tipo = specifica il tipo di spline cubica tra naturale o not-a-knot
    %OUPTUT:
    %y = vettore contenente i risultati della valutazione nei punti di x
    phi = zeros(1,length(xi)-2); 
    eps = zeros(1,length(xi)-2);
    for i=1:length(xi)-2
        hi = xi(i+1)-xi(i);
        h1 = xi(i+2)-xi(i+1);
        phi(i) = hi/(hi+h1);
        eps(i) = h1/(hi+h1);
    end
    diffDiv = diffDivise(xi,fi);
    if tipo == 0
        %cubica naturale
        mi = solveSplineNat(phi,eps,diffDiv);
        mi = [0;mi;0];
    else
        %cubica not a knot
        mi = solveSplineNaK(phi,eps,diffDiv);
    end
    s = createSpline(mi,fi,xi);
    y = evaluateSpline(s,xi,x);
end

