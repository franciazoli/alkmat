%% 1. feladat
%f = @(x) 3*x - cos(x);
x = linspace(-2,2);
plot(x,f(x))
ax = gca;
ax.XAxisLocation = 'origin'
ay = gca;
ay.YAxisLocation = 'origin'
fsolve(f,0)

%% 2. feladat
roots([3 0 -12 4])
%% 3. feladat
f = @(x) exp(x)-sin(x);
x = linspace(-20,2)
plot(x,f(x))
fsolve(f, -6)
%% 4.feladat
f=@(x) log(x)-2-x;
x = linspace(0.01, 20);
plot(x,f(x))
fsolve(f,2)

%% 6. feladat
roots([1 -1 -2 -2 4])