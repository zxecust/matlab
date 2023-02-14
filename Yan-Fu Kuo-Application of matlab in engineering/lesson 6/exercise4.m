t= linspace(0, 10, 1000); 
y = sin(pi*t.^2./4); 
plot(t,y); 
hold on
t=linspace(0, 10, 50);
y=sin(pi*t.^2./4); 
stem(t,y);
hold off