%Soluzione es 2 capitolo 6
tol = 10^-5;
numIt = zeros(10,1);
autVal = zeros(10,1);
index = 1;
for i = 100:100:1000
    A = createSparseMatrix(i);
    v = ones(i,1);
    [autVal(index),numIt(index)] = potenze(A,tol,v);
    index = index+1;
end