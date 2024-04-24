A = [2 1; 1 1; 1 0];
b = [100; 80; 40];
c = [-30 -20];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])
%b - A*x
lambda.ineqlin % árnyékár