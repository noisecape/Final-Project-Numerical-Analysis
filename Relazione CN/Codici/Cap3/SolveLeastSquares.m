function x = SolveLeastSquares(A,b,m,n)
    %x = SolveLeastSquares(A,b)
    %Risolve il sistema sovradeterminato Ax = b nel senso dei minimi
    %quadrati
    %INPUT:
    %A = matrice fattorizzata QR
    %b = vettore termini noti
    %OUTPUT:
    %x = soluzione nel senso dei minimi quadrati, ovvero Rx = g1
    
    qT = eye(m);
    for i=1:n
        qT = [eye(i-1) zeros(i-1,m-i+1); zeros(i-1,m-i+1)' (eye(m-i+1)-(2/norm([1;A(i+1:m,i)],2)^2)*([1; A(i+1:m,i)]*[1 A(i+1:m, i)']))]*qT;
    end
    R = triu(A(1:n, :));
    qTb = qT(1:n,:)*b';
    x = trisolveSup(R,qTb);
end

