%Rozwiązywanie równań

clear all
close all
clc

%Jaś+Staś+Małgosia=15kg ekwipunku
%Jaś=2*Małgosia

A = [ 1 1 1; 1 0 -2 ]
b = [ 15; 0 ]
x = pinv(A) * b
sum(x)
x = A \ b

