A = [0, 0, 1/2, 1/2
    1/3, 0, 1/3, 1/3
    1/2, 1/2, 0, 0
    0, 0, 1, 0]
[u v] = eig(A)
x = u(:,1)
x / sum(x)