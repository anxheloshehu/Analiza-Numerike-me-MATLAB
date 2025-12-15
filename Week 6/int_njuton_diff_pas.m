%Interpolimi i Njutonit – diferenca nga pas
s = (X - x(end)) / h;

P_pase = Delta(n,1);
term = 1;

for k = 1:n-1
    term = term * (s+(k-1)) / k;
    P_pase = P_pase + term * Delta(n-k,k+1);
end

P_pase = simplify(P_pase)
