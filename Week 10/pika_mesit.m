function [t, y] = pika_mesit(f, t0, y0, h, N)
% -------------------------------------------------------------
% pika_mesit: Metoda e Pikës së Mesit për zgjidhjen e IVP
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

t = t0 + (0:N)*h;   % vektori i kohes
y = zeros(1, N+1);  % rezervimi i vektorit te zgjidhjes
y(1) = y0;

for n = 1:N
    y_mid = y(n) + (h/2)*f(t(n), y(n));               % pika e mesit
    y(n+1) = y(n) + h*f(t(n) + h/2, y_mid);  % përditësimi i zgjidhjes
end
end
