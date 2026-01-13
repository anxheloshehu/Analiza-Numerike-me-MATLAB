% Testimi 

clear; clc;

f = @(x) x.^2-4*x+3;

h = 0.01;

% Integrimi numerik
a = 0; b = 1; n = 10;

I_tr = metoda_trapezave(f, a, b, n);
I_si = metoda_simpson(f, a, b, n);

fprintf('Trapezi          = %.6f\n', I_tr);
fprintf('Simpson          = %.6f\n', I_si);
