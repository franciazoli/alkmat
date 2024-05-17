%% 2. lambda

A = [-3 -2 -3
    -1 -1 2
    -3 0 0];

v = [4 -2 -4]';

dot(A*v,v)/dot(v,v)

%% 3. szöveges
A = [0.4 0.3 0.3
    0.1 0.7 0.2
    0.4 0.2 0.4]';

[u,v] = eig(A)

x = u(:,1)
round(x/sum(x),2)

%% 4. populáció x év múlva
A = [0 3 2
    0.9 0 0
    0 0.4 0];

[u,v] = eig(A)

v(1)^2
%% 5. populáció
A=  [0 3 1
    0.8 0 0
    0 0.7 0];
[u v] = eig(A)
x = u(:,1);
x/sum(x)
%% 6. feladat xn = k
A = [73 32 19 10
    -73 -32 -17 -11
    -116 -50 -32 -16
    -88 -40 -26 -9];

[u v] = eig(A)
x = u(:,1)
x/x(1)

%% 7. feladat internetoldal
format default
A = [0 0 1/3 1/3
    1/3 0 1/3 1/3
    1/3 1 0 1/3
    1/3 0 1/3 0];

[u v] = eig(A)

x = u(:,1)
x/sum(x)

