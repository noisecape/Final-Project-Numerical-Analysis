f = @(x) sin(x); % la funzione
xi = zeros(3,1); % vettore contenente le ascisse interpolanti la funzione
di = zeros(3,1); % vettore contenente i valori delle derivate
                 % della funzione relativa alle ascisse interpolanti
for j = 1:length(xi)
    xi(j) = (j-1)*pi;
    di(j) = cos(xi(j));
end
fi = f(xi);
x = linspace(0,2*pi);
pN = newton(xi,fi,x); 
pL = lagrange(xi,fi,x);
pH = hermite(xi,fi,di,x);

figure;
hold on;
grid on;
fplot(f, [0, 2*pi], 'b');
plot(x, pN, 'r.', 'Markersize', 7);
plot(x, pH, 'g', 'Markersize', 7);
plot(x, pL, 'y', 'Markersize', 7);
plot(xi, fi, 'r*');
xlabel('0 <= x <= 2\pi');
legend('sin(x)', 'Newton', 'Hermite', 'Lagrange', 'ascisse interpolanti');