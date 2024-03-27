f = @(x) exp(x) - sin(pi*x);

t = linspace(0,1,3);
p=polyfit(t,f(t),2);

xx = linspace(0,1);
L = polyval(p,xx);

F = f(xx);
plot(xx,L,xx,F,t,f(t),'*')