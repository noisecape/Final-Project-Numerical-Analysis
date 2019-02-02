function y = lagrange(xi,fi,x)
    %y = lagrange(xi,fi,x) calcola il polinomio interpolante la coppia di
    %dati ascissa-ordinata.
    %INPUT:
    %xi = ascisse
    %fi = ordinate
    %x = vettore contenente i valori della x nel quale voglio calcolare il
    %polinomio
    %OUTPUT:
    %y = vettore contente i valori del polinomio interpolante le coppie
    %dei dati
    n = length(xi);
    L = ones(n,length(x));
    for i = 1:n
        for j = 1:n
            if(i~=j)
                L(i,:) = L(i,:).*(x-xi(j))/(xi(i)-xi(j));
            end
        end
    end
    y = 0;
    for i =1:n
        y = y +fi(i)*L(i,:);
    end
end
