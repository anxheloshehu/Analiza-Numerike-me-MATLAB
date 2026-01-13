function I = metoda_trapezave(f, a, b, n)
% -------------------------------------------------------------
% Integrimi numerik me metoden e trapezit
% f  - funksioni
% [a,b] - intervali i integrimit
% n  - numri i nënintervaleve
% -------------------------------------------------------------

h = (b - a) / n;
x = a:h:b;
y = f(x);

I = h/2 * (y(1) + 2*sum(y(2:n)) + y(n+1));
end
% -------------------------------------------------------------