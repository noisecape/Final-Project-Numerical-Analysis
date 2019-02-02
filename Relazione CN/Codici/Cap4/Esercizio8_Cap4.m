%Soluzione esercizio 8 capitolo 4
a = -6;
b = 6;
n = 2;
constLeb = zeros(20,1);
i = 1;
while n <= 40
    xi = ceby(n,a,b);
    constLeb(i) = computeLeb(xi);
    n = n+2;
    i = i+1;
end