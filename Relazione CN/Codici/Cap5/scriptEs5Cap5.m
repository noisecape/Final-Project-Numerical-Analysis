%script es 5 capitolo 5
f = @(x) exp((-10^6)*x);
a = 0;
b = 1;
tol = 10^-9;
approx = 10^-6;
errTrapComp = zeros(100,1);
errSimpComp = zeros(100,1);
rstTrapComp = zeros(100,1);
rstTrapComp = zeros(100,1);
numIt = zeros(100,1);
i = 1;

%soluzione trapcomp
for n = 1000000:1000000:1000000000
    rstTrapComp(i) = trapcomp(n,a,b,f);
    errTrapComp(i) = abs(rst(i)-approx);
    if errTrapComp(i) < tol
        break;
    else
        i = i+1;
    end
end

if errTrapComp(i) > tol || i == length(errTrapComp)
    error('Tolleranza non raggiunta con il metodo dei Trapezi composito');
end


%soluzione simpcomp
i = 1;
for n = 100000:100000:1000000000
    rstSimpComp(i) = simpcomp(n,a,b,f);
    errSimpComp(i) = abs(rstSimpComp(i)-approx);
    if errSimpComp(i) < tol
        break;
    else
        i = i+1;
    end
end

if err(i) > tol || i == length(errSimpComp)
    error('Tolleranza non raggiunta con il metodo di Simpson composito');
end

%soluzione Simpson adattiva
[ISAD,numValSimpAd] = simpad(a,b,f,tol);

%soluzione Trapezi adattiva
[ITAD,numValTrapAD] = trapad(a,b,f,tol);
