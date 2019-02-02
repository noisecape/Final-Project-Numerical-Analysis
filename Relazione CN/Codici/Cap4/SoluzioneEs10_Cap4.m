%Soluzione esercizio 10 cap 4

%FORMULA MOTO RETTILINEO UNIFORMEMENTE ACCELERATO
%x(t) = x0+v0*t+1/2*a*t^2
%Il sistema ha soluzione se ho almeno n+1 punti distinti
%In questo caso il problema è ben posto poiche i punti distinti sono 5>3
value = 1;
V = zeros(10,3);
for i = 1:10
    V(i, 1:3) = value.^(0:2);
    r = mod(i,2);
    if r == 0
        value = value + 1;
    end
end
y = [2.9 3.1 6.9 7.1 12.9 13.1 20.9 21.1 30.9 31.1];
V = QRFatt(V);
[m,n] = size(V);
x = SolveLeastSquares(V,y,m,n);