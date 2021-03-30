clear all
clc

P = 'Podaj wielkość swojej macierzy: '
N = input(P)
X = 10*eye(N)
B = diag(-5 * ones(N-1,1), 1)
C = diag(5 * ones(N-1,1), -1)
ABC = X + B + C
A = fliplr(ABC)
