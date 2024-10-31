close all; clear all; clc;

% Definisci un vettore per l'asse x
x = linspace(0, 10, 100); % Genera 100 punti equidistanti da 0 a 10

% Definisci u n vettore per l'asse y (ad esempio, x * 2)
y = x.^2;

% Traccia il grafico
plot(x, y);
hold on
y = x.^2.*reallog(x);
plot(x, y)
xlabel('Asse X');
ylabel('Asse Y');
title('Grafico x * y');

