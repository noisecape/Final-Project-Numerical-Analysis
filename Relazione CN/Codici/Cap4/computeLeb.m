function y = computeLeb(xi)
    %y = computeLeb(xi) calcola la costante di Lebesgue relativa alle
    %ascisse in xi
    %INPUT:
    %xi = vettore delle ascisse
    %OUTPUT
    %y = costante di Lebesgue
    n = length(xi);
    x = linspace(xi(1),xi(end),10000);
    L = ones(n,length(x));
    sumL = 0;
    for i = 1:n
        for j = 1:n
            if(i~=j)
                L(i,:) = L(i,:).*(x-xi(j))/(xi(i)-xi(j));
            end
        end
        sumL = sumL + abs(L(i,:));
        y = norm(sumL,inf);
    end
end

