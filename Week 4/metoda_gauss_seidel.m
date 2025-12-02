function [x, k, res_hist] = metoda_gauss_seidel(A, b, x0, tol, maxIter)
n = length(b);
x = x0;
res_hist = zeros(maxIter,1);
for k = 1:maxIter
    x_old = x;
    for i = 1:n
        s1 = A(i,1:i-1) * x(1:i-1);
        s2 = A(i,i+1:n) * x_old(i+1:n);
        x(i) = (b(i) - s1 - s2) / A(i,i);
    end
    res_hist(k) = norm(A*x - b);
    if norm(x - x_old) < tol
        res_hist = res_hist(1:k);
        return
    end
end
res_hist = res_hist(1:maxIter);
end