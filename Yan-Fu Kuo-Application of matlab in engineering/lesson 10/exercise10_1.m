% exercise 1
% 建立多项式
p1 = [20 -7 5 10]; p2 = [4 12 -3]; p = conv(p1, p2); x = -2 : 0.01 : 1; d = polyder(p); 
y1 = polyval(p,x); y2 = polyval(d,x);
% 绘制两条多项式曲线
yyaxis left
H1 = plot(x, y1);
yyaxis right
H2 = plot(x, y2);
% 设置图像格式
set(H1,'LineStyle','--','LineWidth',1.5); set(H2,'LineWidth',1.5);
legend('f(x)','f‘(x)');
xlabel('x');