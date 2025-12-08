function J = jacobian(xy)
x = xy(1);
y = xy(2);

J = zeros(2,2);

% Jakobiani i sistemit:
% SISTEMI: 
% f(x,y) = 3*x^2 - exp(y*sqrt(x)) + x - 1
% g(x,y) = exp(x) - y^2 + y - 1

a = sqrt(x);
b = exp(y*a);

J(1,1) = 6*x - (y/(2*a))*b + 1;
J(1,2) = -a*b;
J(2,1) = exp(x);
J(2,2) = -2*y + 1;

end
