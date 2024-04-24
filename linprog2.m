A = [20 40; 50 20; 0 2];
b = [280; 300; 12];
c = [-100 -200];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])
%b - A*x
lambda.ineqlin % árnyékár

c1=@(x,y) 20*x + 40*y - 280;
c2=@(x,y) 50*x + 20*y - 300;
c3=@(x,y) 2*y - 12;
figure; hold on;
fimplicit(c1,[0 20 0 20])
fimplicit(c2,[0 20 0 20])
fimplicit(c3,[0 20 0 20])

cc = @(x,y) 100*x + 200*y - 1400;
fimplicit(cc,[0 20 0 20], '--m'); hold off;