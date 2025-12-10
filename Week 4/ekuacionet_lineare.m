clc
clear all

syms x y
eq1 = 2*x+8*y==15;
eq2 = 9*x+6*y==21;
sol = solve([eq1,eq2],[x,y]);
disp(sol.x)
disp(sol.y)

