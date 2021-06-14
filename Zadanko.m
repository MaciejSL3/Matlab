%Losowe polecenia matematyczne

close all
clear all
clc

n = 5;
A = eye(n);
A(n,1) = 1;
A(n,2) = 1;
for a = 1:n
    A^a
end