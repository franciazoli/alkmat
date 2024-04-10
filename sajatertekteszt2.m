A = [0 8 1
    0.8 0 0
    0 0.6 0]
[u v] = eig(A)
x = u(:,1)
x = x/sum(x)