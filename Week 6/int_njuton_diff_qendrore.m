% Interpolimi i Njutonit – diferenca qendrore
m = ceil(n/2);   % indeksi qendror
s = (X - x(m)) / h;

P_qendrore = Delta(m,1);
term = 1;

for k = 1:n-1
    if mod(k,2) == 1
        term = term * (s - (k-1)/2) / k;
        P_qendrore = P_qendrore + term * Delta(m-floor(k/2),k+1);
    else
        term = term * (s + k/2 - 1) / k;
        P_qendrore = P_qendrore + term * Delta(m-floor(k/2),k+1);
    end
end

P_qendrore = simplify(P_qendrore)
