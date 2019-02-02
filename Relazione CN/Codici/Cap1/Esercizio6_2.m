% x = valore verso il quale la successione deve convergere
% x0 = punto iniziale della successione
% x1 = secondo punto della successione
% tol = tolleranza richiesta
% err0 = errore iniziale
% err1 = errore al passo 1
% count = contatore relativo alle iterazioni effettuate

x = sqrt(3);
x0 = 3;
x1 = 2;
tol = 10e-12;
err0 = x0-x;
err1 = x1-x;
count = 1;
while err1 >= tol
    temp = x1;
    x1 = (3+(x0*x1))/(x0+x1);
    x0 = temp;
    err1 = x1-x;
    count = count+1;
    fprintf("Errore %d alla iterazione %d\n",err1,count);
end
