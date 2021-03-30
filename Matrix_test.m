clear all
clc

N = 6
A = 10*eye(N)
B = diag(-5 * ones(N-1,1), 1)
C = diag(5 * ones(N-1,1), -1)
ABC = A + B + C
CBA = fliplr(ABC)