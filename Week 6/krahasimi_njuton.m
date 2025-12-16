%krahasimi njuton diferenca nga para nga pas edhe qendrore
xx = pi/6;
exact = sin(xx);

perafrimi_para = double(subs(P_para, X, xx));
perafrimi_pase = double(subs(P_pase, X, xx));
perafrimi_qendrore = double(subs(P_qendrore, X, xx));

disp('Metoda e Njutonit - Diferencat')
disp('    Exacte        Para        Pase      Qendrore')
disp([exact perafrimi_para perafrimi_pase perafrimi_qendrore])

