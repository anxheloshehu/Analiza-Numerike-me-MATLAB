function z = LINEAR_MKV(x, y)
% -------------------------------------------------------------
% Regresion linear me metoden e katroreve me te vegjel
% Modeli: y = k1 + k2*x
% x dhe y jane vektore te dhenash (rreshta ose shtylla)
% -------------------------------------------------------------

x = x(:); 
y = y(:);
n = length(x);

% Shumatoret
sx  = sum(x);
sy  = sum(y);
sxx = sum(x.^2);
sxy = sum(x.*y);

% Sistemi normal
A = [n   sx;
     sx  sxx];
b = [sy;
     sxy];

% Zgjidhja e sistemit
z = A \ b;

k1 = z(1);
k2 = z(2);

% Printimi i rezultateve
fprintf('\nKoeficientet e perafrimit linear:\n');
fprintf('k1 = %.6f\n', k1);
fprintf('k1 = %.6f\n', k2);
fprintf('Funksioni i perafrimit: y = %.6f + %.6f x\n\n', k1, k2);

% Vlerat e perafrimit dhe gabimi
y_aprox = k1 + k2*x;
err = y - y_aprox;

% Tabela
tabela = [x y y_aprox err];

disp('   x        y     y_aprox     gabimi');
disp(tabela);

% Gabimi katror total
gab = sum(err.^2);
fprintf('Gabimi katror total = %.6e\n', gab);
end