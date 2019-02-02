function [x,norma,j] = solveNewtonNonLineare(F,x,J,tol,itmax)
    %[x,norma] = solveNewtonNonLineare(F,x,J,tol,imax)
    %Risolve il sistema non lineare utilizzando il metodo di Newton
    %INPUT:
    %F= sistema non lineare
    %x = punto/i iniziali
    %J = matrice Jacobiana
    %tol = tolleranza sull'errore
    %itmax = iterazioni massime
    %OUTPUT:
    %x = soluzione del sistema non lineare F
    %norma = norma dell'ultimo incremento
    j = 0;
    xPrev = 0;
    n = length(x);
    while(j<itmax) && (norm(x-xPrev)>tol)
        j=j+1;
        xPrev = x;
        evaluation = -feval(F,x);
        b = evaluation(1:n)';
        x = x+LUPivotingSolve(J,b);
    end
    norma = norm(x-xPrev);
end