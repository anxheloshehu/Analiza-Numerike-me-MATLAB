function xy = NewtonSystem(x0, y0, max_iter, tol)
% NewtonSystem - Zgjidh sistem jolinear me metoden e Njutonit
% hyrje:
%   x0, y0      - perafrimet fillestare
%   max_iter    - numri maksimal i iteracioneve
%   tol         - toleranca per ndalimin e metodes
%
% dalje:
%   xy          - vektori i zgjidhjes se perafruar [x; y]

xy = [x0; y0];

for k = 1:max_iter

    F = fg(xy);         % vektori i funksioneve
    J = jacobian(xy);   % Jakobiani
    
    delta = J \ F;      % zgjidhja e sistemit linear
    
    xy_new = xy - delta;

    % kontroll tolerancen
    if norm(xy_new - xy) < tol
        xy = xy_new;
        fprintf('Konvergoi ne iteracionin %d\n', k);
        return
    end
    
    xy = xy_new;
end

fprintf('Metoda nuk konvergoi brenda %d iteracioneve\n', max_iter);

end
%egzekutimi
%x0 = 1;
%y0 = 1;
%max_iter = 50;
%tol = 1e-6;
%xy_solution = NewtonSystem(x0, y0, max_iter, tol)
