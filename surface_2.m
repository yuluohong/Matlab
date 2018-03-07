[X,Y] = meshgrid(-20:20,-20:20);
Z = abs(0.5*cos(2*pi*X/40)+0.5*cos(2*pi*Y/40));

surf(X,Y,Z)