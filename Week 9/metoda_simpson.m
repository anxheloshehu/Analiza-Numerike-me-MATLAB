function I = metoda_simpson(f, a, b, n)
% -------------------------------------------------------------
% Integrimi numerik me rregullin e Simpsonit
% n duhet te jete numer çift
% -------------------------------------------------------------

if mod(n,2) ~= 0
    error('Numri i nënintervaleve n duhet te jete çift');
end

h = (b - a) / n;
x = a:h:b;
y = f(x);

I = h/3 * ( ...
    y(1) ...
    + 4*sum(y(2:2:n)) ...
    + 2*sum(y(3:2:n-1)) ...
    + y(n+1) );
end
% -------------------------------------------------------------