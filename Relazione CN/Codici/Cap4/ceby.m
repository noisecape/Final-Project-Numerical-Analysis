function xi = ceby(n,a,b)
    % xi = ceby(n,a,b)
    % Calcola le ascisse di Chebyshev per il polinomio
    % interpolante di grado n, trasformate in [a,b]
    % INPUT:
    % n =  numero di intervalli desiderati tra a e b che definiscono la
    % partizione delle ascisse interpolanti
    % a = estremo sinistro
    % b = estremo destro
    % OUTPUT:
    % xi = vettore ascisse di Chebyshev 
    
    xi = cos( ((2*[0:n]+1)*pi) / (2*n+2) );
    xi = ((a+b)+(b-a)*xi)/2;
end