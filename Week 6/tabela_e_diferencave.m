n = length(y);
Delta = zeros(n,n);
Delta(:,1) = y';

for j = 2:n
    for i = 1:n-j+1
        Delta(i,j) = Delta(i+1,j-1) - Delta(i,j-1);
    end
end
Delta