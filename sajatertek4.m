A = [0.1 0.5 0.4
    0.3 0.1 0.5
    0.6 0.4 0.1]
[u v] = eig(A)
x = u(:,1)
x / sum(x)