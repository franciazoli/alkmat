%% 2. feladat
f = @(x) [sin(x(1) + 2*x(2)) + x(1)*x(2); cos(x(2)-1)-sin(x(1))];
[gyok, fvertek] = fsolve(f,[0,0])

%% 4. feladat
roots([3 0 -12 4]) %0.3435
x = [0.5 0];
eps=0.00001;
for i =1:1000
    x = [(3*x(1)^3+4)/12 x(1)]
    if(abs(x(1)-x(2))<eps)
        disp(i)
        break;
    end
end