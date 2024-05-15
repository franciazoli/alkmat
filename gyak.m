%% Hermite
% 6. feladat
x = [-4 -2 -1];
y = [-171 -17 -2];
spline(x, [135 y 0], -3.7)
%% 7.
x = linspace(-2,2,7);
y = 1./(1+exp(x.^2));
spline(x,[0 y 0], -1.7)

%% eig weboldal
A = [0 0 0 1/2
    1/2 0 1/2 0
    1/3 1/3 0 1/3
    0 1/2 1/2 0];
[u, v] = eig(A)
x = u(:,1)
x/sum(x)
%% popul
A = [0 2 1
    0.9 0 0
    0 0.5 0];
u = eig(A)
x = u(1)^2%pozitiv sajaterteket
%% abszolutertek
A = [73 32 19 10
    -73 -32 -17 -11
    -116 -50 -32 -16
    -88 -40 -26 -9];
[u v] = eig(A);
x = u(:,2);
x/x(2)
%% lambda
A = [-1 2 2
    0 0 2
    0 -2 2]
v = [-3; -3; 1]

dot(A*v, v) / dot(v,v)