%Rysowanie prostych wykresów

close all
clear all
clc

f = @(x) 3 + sin(x);
g = @(x) 0.5 * (x - 5).^2 - 1;

a = 0;
b = 10;
N = 1000;

x = linspace(a, b, N);

plot(x, f(x), '-r', x, g(x), '-b');

grid on;
grid minor;
xlabel 'oś x';
ylabel 'oś y';