x = -3.5:0.2:3.5; y = -3.5:0.2:3.5;
[X,Y] = meshgrid(x,y); Z = X.*exp(-X.^2-Y.^2);
[C,h] = contourf(Z,[-.45:.05:.45]);
clabel(C,h); axis square;