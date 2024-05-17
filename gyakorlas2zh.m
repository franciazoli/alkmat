%%Hermite interpoláció!!!!



%6. feladat SPLINE
x= [-4 -2 3];
y= [210 28 423];
spline(x,[-153 y 224], -0.6) %[]itt elso hely derivaltja es utolso hely derivaltja
%%
%7. feladat függvényt szeretnénk közelíteni
x=linspace(-3, 3,7); %[-3 3] intervallum és 6 részre osztjuk (hozzá kell adni egyet)
y=1./(1+3*x.^2); %függvény
spline(x,[0 y 0],-0.3) %deriváltak 0 és -0.3 helyen akarjuk
%%
%7. feladat
x=linspace(-2,2,5);
y=1./(1+exp(abs(x))); %a fuggveny amit meg ad a feladat
spline(x,[0 y 0],-0.4) %-0.4 pontban kell meghatarozni az erteket
%%
%Sajátérték feladatok!!!!



%1. feladat internetes oldalak
A=[0 0 1/3 1/3 %1 ha 1db szám van abban a sorban, 1/2 ha 2
    1/3 0 1/3 1/3
    1/3 1 0 1/3
    1/3 0 1/3 0]; %az adott sor milyen sulyokkal mutat az oldalra
[u v]=eig(A) %valos pozitiv erteket nezzuk
x=u(:,1)
x/sum(x)
%%
%2. feladat populácio
A=[0 3 1
    .7 0 0
    0 .7 0];
[u v]=eig(A) %valos pozitiv erteket nezzuk
1.5541^2 %valos pozitiv ertek negyzete a megoldas
%%
%3. feladat
A=[73 32 19 10
    -73 -32 -17 -11
    -116 -50 -32 -16
    -88 -40 -26 -9];
[u v]=eig(A) %masodik sajatertek az u 2. oszlopa
x=u(:,2)
x/x(4) %a 4. meg van adva hogy 1, a tobbi 3 a megoldas
%%
%4. feladat kurva hosszu szoveges
A=[.7 .2 .1
    .2 .4 .1
    .1 .4 .8];%az oszlopoknak ki kell adnia 1-et
[u v]=eig(A)
x=u(:,1) %nem valtozik ezert az 1 oszlop kell, mert abban van 1 (azaz nem valtozik semmi)
x/sum(x) %megoldas (eloszlas kell ezert sum)
%%
%5. feladat euklideszi norma
A=[-1 1 -2
    -2 0 -3
    -3 -1 -3];
v=[-5 4 1]';

dot(A*v,v)/dot(v,v) %megoldas
%%
%6. feladat bolha ugrál
function N=fun(p)
    M=[0 1/2 0 1/2 0 0 %jobb felso (1)-bol hova tudunk jutni
        1/3 0 1/3 0 1/3 0 %2. pontbol hova tudunk eljutni (1-6)
        0 1/2 0 0 0 1/2
        1/2 0 0 0 1/2 0
        0 1/3 0 1/3 0 1/3
        0 0 1/2 0 1/2 0]';
    %a pontok igy neznek ki ennel a feladatnal:
    %3 2 1
    %6 5 4
    v=[1 0 0 0 0 0]'; %kiindulo eloszlas, jobb felso (1. pont)-ban vagyunk
    pn = 0;
    for N = 1:100 %1-tol 100ig
        v=M*v;
        pn= v(6); %meghatarozza hogy a 6. csucsban milyen ertekben vagyunk (a feladat ezt kerte)
        if pn > p
            break
        end
    end
end
%%
% Bolha ugral masik verzio

    M=[0 1/2 0 1/2 0 0 %jobb felso (1)-bol hova tudunk jutni
        1/3 0 1/3 0 1/3 0 %2. pontbol hova tudunk eljutni (1-6)
        0 1/2 0 0 0 1/2
        1/2 0 0 0 1/2 0
        0 1/3 0 1/3 0 1/3
        0 0 1/2 0 1/2 0]';
    %x=M^N*v; %allando hibakod miatt kikommentelve, de amugy kell
 %   p=x(6)
%%
%7. feladat Matlabos
function y=fun(x,n)
A=[0 4 5
    0.8 0 0
    0 0.4 0];
y=A^n*x;
end
%%
%Nem Linearis Egyenletek!!!



%1. feladat lokális minimumhely
f= @(x) sin(x^2-1)-2*x*cos(x)

fminsearch(f, 0)
%%
%2. feladat 0-hoz legkozelebbi gyöke
f= @(x) sin(x^2-1)-2*x*cos(x)

fzero(f,0)
%vagy
fsolve(f,0)
%%
%3. feladat függvénybe eso lokális minimumai közül a legkisebb
f=@(x) x(1)^6+x(1)^3*x(2)^2-3*x(1)^4+x(1)*x(2)^2

[x f]= fminsearch(f, [0 0]) %az f lesz a minimum
%%
%4. feladat polinom masodik legnagyobb zérushelye
roots([1 -8 -16 218 -225 -450 0]) %5 lesz a megoldás (csak a számok közül a második legnagyobb kell)
%%
%5. feladat newton módszer
function [xk,fk]=solveit(x0,k)
f=@(x) exp(x) -x^2; %leirjuk a fuggvenyt
df= @(x) exp(x) - x*2; %derivaljuk a fuggvenyt
xk=x0; %kotelezo innentol
for i = 1:k
    xk=xk-f(xk)/df(xk);
end
fk=f(xk);
end

%VAGY SECANT
function [x,fx]=solveit(x0,x1,k)
  f=@(x) exp(x)-x.^2; %leirod a fuggvenyt
  for i=1:k
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); 
    x0=x1;
    x1=x2;
  end
  x=x1;
  fx=f(x);
end

%%



%Lineáris Programozás 1!!!
%2. feladat megengedett tartomány (A B C I. II.)
A=[2 6; 4 5;6 2]; %I. és II. számok
b=[72 74 78]; %megadott számok a feladatban
c=[-1 -1]; %0-val nem jon ki, ha [-1 1], [1 -1] több pontot ad meg és igy le lehet szukiteni
[x fval]=linprog(c,A,b,[],[],[0;0],[inf inf]) %az x eredmény itt 11 és 6 azaz (11,6) koórdinátát kell keresni
%%
A = [2 1; 1 1; 1 0];
b = [100; 80; 40];
c = [-30 -20];

[x ,fval ,~ ,~ ,lambda]=linprog(c,A,b,[],[],[0;0],[inf,inf])
b - A*x %maradék
lambda.ineqlin % árnyékár
