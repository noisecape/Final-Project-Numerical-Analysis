function diffDiv = diffDivise(xi,fi)
    % fi = diffDivise(xi,fi) calcola le differenze divise
    % INPUT:
    % xi = nodi di interpolazione
    % fi = valori calcolati nei nodi di interpolazione
    % OUTPUT:
    % diffDiv = vettore contente le differenze divise
    n=length(xi)-1;

    for j=1:n-1
        for i=n+1:-1:j+1
            fi(i)=(fi(i)-fi(i-1))/(xi(i)-xi(i-j));
        end
    end

    diffDiv=fi(3:length(fi))';
end

