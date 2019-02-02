format long e;

%   h = vettore contente valori di 10^-j per j = 1..10

h = zeros(10,1);

%   t = vettore contente valori di teta(x) = (f(x+h)-f(x-h))/2*h
%   con x = 1

t = zeros(10,1);

for i = 1:10
    h(i) = 10^-i;
    t(i) = computeTeta(1,h(i));
end

plot(h,t);

function rst = computeTeta(x,h)
        %   Calcola la funzione teta(x) = (f(x+h)-f(x-h))/2*h
        sum = x+h;
        diff = x-h;
        rst = (sum^4 - diff^4)/(2*h);
end
