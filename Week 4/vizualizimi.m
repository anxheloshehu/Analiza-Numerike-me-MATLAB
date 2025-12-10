% vizualizimi ek.Linear
clc
clear all
% Krijo vektorin x
x = -10:0.1:10;

% Funksionet
y1 = x - 1;
y2 = 3*x + 10;

% Vizatim
plot(x, y1, 'LineWidth', 2); 
hold on;             
plot(x, y2, 'LineWidth', 2);

xlabel('x');
ylabel('y');
legend('y = x - 1', 'y = 3x + 10');
grid on;
title('vizualizimi i dy funksioneve(intpr.ek.linear)');
