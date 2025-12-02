function [x, k, res_hist] = metoda_jacob(A, b, x0, tol, maxIter)
%   A        - matricë nxn
%   b        - vektor nx1 (ana e djathtë e ekuacionit)
%   x0       - vlerësimi fillestar (nx1)
%   tol      - toleranca për ndalimin e iteracioneve (p.sh. 1e-6)
%   maxIter  - numri maksimal i iteracioneve
% Daljet:
%   x        - zgjidhja e afërt e sistemit
%   k        - numri i iteracioneve të kryera
%   res_hist - historia e normave të residualit

n = size(A,1);
D = diag(diag(A));                                           % nxn, merret vetëm diagonalia e A
R = A - D;                                                   % pjesa tjetër e matricës A përveç diagonalës
Dinv = diag(1./diag(D));                                     % invertohet diagonalia në mënyrë efikase

x = x0;                                                      % inicializimi i vektorit x
res_hist = zeros(maxIter,1);                                 % vektor për ruajtjen e gabimit(qasjes)

for k = 1:maxIter
    x_new = Dinv * (b - R * x);                              % formula e Jacobi për iteracionin e ri
    res_hist(k) = norm(A*x_new - b);                         % llogaritja e mbetjes(gabimit) ||Ax - b||

    if norm(x_new - x) < tol                                 % kushti i ndalimit
        x = x_new;
        res_hist = res_hist(1:k);                       
        return
    end

    x = x_new;                       % përditësimi i vektorit për iteracionin tjetër
end

% Nëse arrihet numri maksimal i iteracioneve
res_hist = res_hist(1:maxIter);
end
