syms X
n = length(x);

P_lagrange = 0;

for i = 1:n
    Li = 1;
    for j = 1:n
        if j ~= i
            Li = Li * (X - x(j)) / (x(i) - x(j));
        end
    end
    P_lagrange = P_lagrange + y(i) * Li;
end

P_lagrange = simplify(P_lagrange)
