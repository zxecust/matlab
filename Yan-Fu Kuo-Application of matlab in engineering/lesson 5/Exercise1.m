t=1:0.01:2;
y1=t.^2;
y2=sin(2*pi*t);
plot(t,y1,'k-',t,y2,'ro');
legend('t^2 ',' sin(2\pi t)','Location','northwest');
xlabel('Times (ms)');
ylabel('f(t)');
title('Mini Assignment #1');