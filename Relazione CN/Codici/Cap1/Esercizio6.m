% x = valore verso il quale la successione deve convergere
% x0 = punto iniziale della successione
%tol = tolleranza richiesta
%err = errore commesso ad ogni iterazione
%count = contatore relativo alle iterazioni effettuate

x = sqrt(3);
x0 = 3;
tol = 10e-12;
err = x0-x;
count =0;
while err >= tol
    x0 = (x0+(3/x0))/2;
    err = x0-x;
    count = count+1;
end
