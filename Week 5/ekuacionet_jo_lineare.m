clc
clear all

syms x y

eq1 = 3*x^2 - exp(y*sqrt(x)) + x == 1; 
eq2 = exp(x) - y^2 + y == 1;

sol = solve([eq1, eq2], [x, y]);

disp(sol.x)
disp(sol.y)
