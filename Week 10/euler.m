function [t, y] = euler(f, t0, y0, h, N)
% -------------------------------------------------------------
% euler: Metoda e Euler-it per zgjidhjen e IVP
%
% INPUT:
%   f  - funksioni f(t,y)
%   t0 - pika fillestare
%   y0 - vlera fillestare
%   h  - hapi i diskretizimit
%   N  - numri i hapave
%
% OUTPUT:
%   t  - vektori i kohes [t0, t1, ..., tN]
%   y  - vektori i zgjidhjes [y0, y1, ..., yN]
% -------------------------------------------------------------

t = t0 + (0:N)*h;  
y = zeros(1, N+1);
y(1) = y0;

for n = 1:N
    y(n+1) = y(n) + h * f(t(n), y(n));
end
end
