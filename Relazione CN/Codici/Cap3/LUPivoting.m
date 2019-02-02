function [A,p] = LUPivoting(A)
    %[A,p] = LUPivoting(A)
    %Restituisce la matrice A fattorizzata LU con pivoting parziale ed il
    %vettore p delle permutazioni
    %INPUT:
    %A = matrice sdp 
    [m,n] = size(A);
    if m~=n
        error('Matrice non quadarata');
    end
    p = 1:n;
    for i = 1:n-1
        [mi,ki] = max(abs(A(i:n,i)));
        if mi == 0
            error('Matrice non singolare');
        end
        ki = ki+i-1;
        if ki> i
            A([i ki],:) = A([ki i],:);
            p([i ki]) = p([ki i]);
        end
        A(i+1:n,i) = A(i+1:n,i)/A(i,i);
        A(i+1:n,i+1:n) = A(i+1:n,i+1:n) -A(i+1:n,i)*A(i,i+1:n);
    end
end

