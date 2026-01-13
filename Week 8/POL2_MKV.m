function z = POL2_MKV(x, y)
% -------------------------------------------------------------
% POL2_MKV
% Regresion polinomial i grades se dyte
% Modeli: y = k1 + k2*x + k3*x^2
% -------------------------------------------------------------

x = x(:);
y = y(:);
n = length(x);

% Shumatoret
sx   = sum(x);
sxx  = sum(x.^2);
sxxx = sum(x.^3);
sxxxx= sum(x.^4);

sy   = sum(y);
sxy  = sum(x.*y);
sxxy = sum(x.^2 .* y);

% Sistemi normal
A = [ n     sx     sxx;
      sx    sxx    sxxx;
      sxx   sxxx   sxxxx ];

b = [ sy;
      sxy;
      sxxy ];

% Zgjidhja e sistemit
z = A \ b;

k1 = z(1);
k2 = z(2);
k3 = z(3);

% Printimi i rezultateve
fprintf('\nKoeficientet e perafrimit polinomial (grade 2):\n');
fprintf('k1 = %.6f\n', k1);
fprintf('k2 = %.6f\n', k2);
fprintf('k3 = %.6f\n', k3);
fprintf('Funksioni i perafrimit:\n');
fprintf('y = %.6f + %.6f x + %.6f x^2\n\n', k1, k2, k3);

% Vlerat e perafrimit dhe gabimi
y_aprox = k1 + k2*x + k3*x.^2;
err = y - y_aprox;

% Tabela
tabela = [x y y_aprox err];

disp('   x        y     y_aprox     gabimi');
disp(tabela);

% Gabimi katror total
gab = sum(err.^2);
fprintf('Gabimi katror total = %.6e\n', gab);
end