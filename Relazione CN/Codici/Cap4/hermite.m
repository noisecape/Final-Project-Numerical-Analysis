function y = hermite(xi,fi,f1i,x)
    %y = hermite(xi,fi,f1i,x) calcola il polinomio interpolante le coppie
    %di dati ascissa ordinata per mezzo del polinomio di Hermite
    %INPUT:
    %xi = ascisse
    %fi = ordinate
    %f1i = derivata prima
    %x = valori della x
	%OUTPUT:
    %y = vettore contenente il valore del polinomio interpolante calcolato
    % sulle x.

    n = length(xi)-1;
    xH = zeros(2*n+2,1); %ascisse interpolazione di Hermite, sono 2n+2
    xH(1:2:2*n+1) = xi;
    xH(2:2:2*n+2) = xi;
    fH = zeros(2*n+2,1); %vettore delle 2n+2 differenze divise
    fH(1:2:2*n+1) = fi;
    fH(2:2:2*n+2) = f1i;
    pHermGrade = length(xH)-1;
    for i = pHermGrade:-2:3
        fH(i) = (fH(i)-fH(i-2))/(xH(i)-xH(i-1));
    end
    for i = 2:pHermGrade
        for j = pHermGrade+1:-1:i+1
            fH(j) = (fH(j)-fH(j-1))/(xH(j)-xH(j-i));
        end
    end
    %Algoritmo di horner
    y = fH(pHermGrade+1)*ones(size(x));
    for i=pHermGrade:-1:1
        y = y.*(x-xH(i))+fH(i);
    end
end

