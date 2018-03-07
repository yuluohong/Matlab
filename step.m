syms a;
num=[100 1];
den=[1 1 1];
g=tf(num,den);
step(g);
norm(g,inf)
hold on
num=[10 1];
g=tf(num,den);
step(g);
norm(g,inf)

num=[1 1];
g=tf(num,den);
step(g);
norm(g,inf)

num=[0.1 1];
g=tf(num,den);
step(g);
norm(g,inf)
num=[0.01 1];
g=tf(num,den);
step(g);
norm(g,inf)

