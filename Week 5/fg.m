function F = fg(xy)
x = xy(1);
y = xy(2);

F = zeros(2,1);

F(1) = 3*x^2 - exp(y*sqrt(x)) + x - 1;
F(2) = exp(x) - y^2 + y - 1;

end
