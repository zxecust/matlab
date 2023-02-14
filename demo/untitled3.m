% matlab 简单制图
x = 0:0.01:2*pi;
y = sin(x);
figure
plot(x,y)
title('y=sin(x)')
xlabel('x')
ylabel('sin(x)')
xlim([0 2*pi])