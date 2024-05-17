%% 3. feladat második legnagyobb zérushely

A = [1 12 27 -108 -324 0];

roots(A)

%% 4. feladat 0-hoz közeli lokális minimum
f = @(x) sin(2*x - 1)*cos(x^2-1);

fminsearch(f,0)

%% 5. feladat ...=0, fplot
f = @(x) cos(3*x-1)-2*sin(x-1)-1

fplot(f,[-2 2])
fzero(f,-0.5)
%% 6. feladat x1,x2
f = @(x) x(1)^6 + x(1)^4*x(2)^2 - 3*x(1)^4 + x(1)^2*x(2)^2 - 1;

[x f] = fminsearch(f,[0 0])