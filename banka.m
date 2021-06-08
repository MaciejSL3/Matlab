% Obliczanie minimalnej powierzchni bańki mydlanej
% rozpiętej na ramce drucianej w kształcie krawędzi
% prostopadłościanu.

close all
clear all
clc

a = 5; % długość krawędzi, centymetry
b = 4; % długość krawędzi, centymetry
c = 3; % długość krawędzi, centymetry

%s0 = x .* y; % pole powierzchi centralnej części
%s1 = (x + a) / 2 .* sqrt((a/2).^2 + ((b-y)/2).^2); % pole trapezu I
%s2 = (y + b) / 2 .* sqrt((b/2).^2 + ((a-x)/2).^2); % pole trapezu II
%s3 = c / 2 .* sqrt((a - x).^2 + (b - y).^2); % pole trójkąta
%s = s0 + 4 * s1 + 4 * s2 + 4 * s3; % pole całej bańki

s = @(x, y) (x .* y) + 4 * ((x + a) / 2 .* sqrt((a/2).^2 + ((b-y)/2).^2)) + 4 * ((y + b) / 2 .* sqrt((b/2).^2 + ((a-x)/2).^2)) + 4 * (c / 2 .* sqrt((a - x).^2 + (b - y).^2));
%końcowy wzór na powierzchnie całej bańki

[xx, yy] = meshgrid(linspace(1,a,100), linspace(1,b,100));
zz = s(xx, yy);
meshc(xx, yy, zz);
min = fminsearch(@(v) s(v(1), v(2)), [0; 0]);
hold all
plot3(min(1), min(2), s(min(1), min(2)), 'ro');