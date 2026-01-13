% Krahasimi i perafrimit linear dhe polinomial (grade 2)
clear; clc; close all;

% Te dhenat eksperimentale (rast testimi)
x = [1 2 3 4]';
y = [2 3 5 4]';

% Perafrimi linear
% ------------------
z_lin = LINEAR_MKV(x, y);
k1 = z_lin(1);
k2 = z_lin(2);
y_lin = k1 + k2*x;

% ===============================
% Perafrimi polinomial (grade 2)
% ===============================
z_pol = POL2_MKV(x, y);
b1 = z_pol(1);
b2 = z_pol(2);
b3 = z_pol(3);
y_pol = b1 + b2*x + b3*x.^2;

% ===============================
% Vizualizimi grafik
% ===============================
xx = linspace(min(x), max(x), 200);

y_lin_plot = k1 + k2*xx;
y_pol_plot = b1 + b2*xx + b3*xx.^2;

figure;
plot(x, y, 'ko', 'MarkerSize', 8, 'LineWidth', 2);
hold on;
plot(xx, y_lin_plot, 'b--', 'LineWidth', 2);
plot(xx, y_pol_plot, 'r-', 'LineWidth', 2);
grid on;

legend('Te dhenat', ...
       'Perafrimi linear', ...
       'Perafrimi polinomial (grade 2)', ...
       'Location', 'best');

xlabel('x');
ylabel('y');
title('Krahasimi i Perafrimeve me Metoden e Katrorëve më të Vegjel');

% ------------------------------
% Krahasimi i gabimeve

err_lin = sum((y - y_lin).^2);
err_pol = sum((y - y_pol).^2);

fprintf('\nKrahasimi i gabimeve:\n');
fprintf('Gabimi katror total (Linear)     = %.6e\n', err_lin);
fprintf('Gabimi katror total (Polinom 2)  = %.6e\n', err_pol);
