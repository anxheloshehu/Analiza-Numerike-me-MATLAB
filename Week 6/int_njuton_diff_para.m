%Interpolimi i Njutonit – diferenca nga para
syms X
s = (X - x(1)) / h;

P_para = Delta(1,1);
term = 1;

for k = 1:n-1
    term = term * (s-(k-1)) / k;
    P_para = P_para + term * Delta(1,k+1);
end

P_para = simplify(P_para)
