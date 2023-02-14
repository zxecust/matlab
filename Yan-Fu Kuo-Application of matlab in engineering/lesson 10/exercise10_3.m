% execrise 3
h = 0.1;
while(h >= 0.0000001)
    x0 = pi/2;
    x = [x0 x0+h];
    y = [sin(x0) sin(x0+h)];
    m = diff(y)./diff(x);
    disp(m);
    h = h/10;
end