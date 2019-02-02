%Soluzione es 4 cap6
tol = 10^-5;
numIt = zeros(46,1);
index = 1;
for i = 100:20:1000
    A = createSparseMatrix(i);
    x0 = zeros(i,1);
    b = ones(i,1);
    [x,numIt(index)] = gaussSeidel(A,b,tol,x0);
    index = index+1;
end
hold on;
plot(100:20:1000,numIt);