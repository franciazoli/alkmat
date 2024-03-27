x=[-2, -1, 0, 2];
f=[-5, 3, 1, 15];
p=polyfit(x,f,3);
xx=linspace(-2.5,2.5);
yy=polyval(p,xx);
figure; plot(x,f,'*',xx,yy)