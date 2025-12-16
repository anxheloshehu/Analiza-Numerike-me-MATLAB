xx = pi/6;
exact = sin(xx);

perafrimi_lagranzh = double(subs(P_lagrange, X, xx));

fprintf('Exacte      = %.10f\n', exact);
fprintf('Lagranzh    = %.10f\n', perafrimi_lagranzh);
fprintf('Gabimi abs  = %.2e\n', abs(exact - perafrimi_lagranzh));
