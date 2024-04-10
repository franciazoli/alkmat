A = [0 6 8
    0.5 0 0
    0 0.5 0];

[u v] = eig(A)
x = u(:,1)
x = x/sum(x)