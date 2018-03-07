x=[8,13,16,21,25,29,36,47,56,65];
y=[87,92,95,100,97,90,86,77,71,68];

p = polyfit(x,y,3)
x2=8:0.1:65;
y2=polyval(p,x2);
plot(x2,y2)
hold on;
plot(x,y);
syms x f(x)
f(x)=poly2sym(p,x)

