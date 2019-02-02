function A = QRFatt(A)
    %A =QRFatt(A)
    %Calcola la fattorizzazione QR della matrice A
    %INPUT:
    %A = matrice da fattorizzare
    %OUTPUT:
    %A = matrice fattorizzata
    [m,n] = size(A);
    for i=1:n
        alpha = norm(A(i:m,i));
        if alpha == 0
            error('La matrice A non ha rango massimo');
        end
        if(A(i,i)>= 0)
            alpha = -alpha;
        end
        v1 = A(i,i)-alpha;
        A(i,i) = alpha;
        A(i+1:m,i) = A(i+1:m,i)/v1;
        beta = -v1/alpha;
        A(i:m,i+1:n) = A(i:m, i+1:n)-(beta*[1; A(i+1:m,i)])*([1 A(i+1:m,i)']*A(i:m, i+1:n));
    end
end
