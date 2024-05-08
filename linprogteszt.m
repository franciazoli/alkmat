A = [2 6; 3 5; 5 4];
b = [60 58 75];
c = [-5, -11];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])

usedA = 2*x(1) + 6*x(2);
usedB = 3*x(1) + 5*x(2);
usedC = 5*x(1) + 4*x(2);

b(1)-usedA
b(3)-usedC

%b-A*x