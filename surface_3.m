[X,Y] = meshgrid(-20:20,-20:20);
Z = abs(-8+exp(2*pi*i*(X/40+Y/40))+exp(2*pi*i*(X/40-Y/40))+exp(2*pi*i*(-X/40+Y/40))+exp(2*pi*i*(Y/40))+exp(2*pi*i*(X/40))+exp(2*pi*i*(-Y/40))+exp(2*pi*i*(-X/40))+exp(2*pi*i*(-X/40-Y/40)));
surf(X,Y,Z)