%Soluzione esercizio 9 capitolo 4
f = @(x) 1./(1+25 * x.^2); %funzione di Runge
a = -6;
b = 6;
n = 2;
xi = [];
err = zeros(20,1);
constLeb = zeros(20,1);
i = 1;
hold on;
grid on;
x = linspace(a,b);
fplot(f, [a,b], 'b','Markersize', 7);
while n <= 40
    xi = linspace(a,b,n+1);
    fi = f(xi);
    y = lagrange(xi,fi,x);
    err(i) = norm(f(x)-y, inf);
    constLeb(i) = computeLeb(xi);
    plot(x,y);
    n = n+2;
    i = i+1; 
end
legend({'Runge','2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40'},'Location','south');
hold off