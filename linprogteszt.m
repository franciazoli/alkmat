%% 2. feladat ábrás
A = [2 7
    3 5 
    6 4];
b = [77 66 96]';
c = [-1 1];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])
%% 3. feladat klasszik szöveges
A = [2 7
    3 4
    5 3];

b=[70 53 70]';
c = [-5 -10];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])

b - A*x % maradékok
lambda.ineqlin %árnyékár