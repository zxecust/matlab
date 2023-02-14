% 绘制图像
t=1:0.01:2;
y1=t.^2;
y2=sin(2.*pi.*t);
hold on
plot(t,y1,'k-','LineWidth',2.0);
h=plot(t,y2,'ro');
% 修改对象参数
set(h,'MarkerFaceColor','0.6 0 0.6',...
    'MarkerEdgeColor','0.6 0 0.6');
set(gca,'FontSize',14);
legend('t^2 ',' sin(2\pi t)','Location','northwest');
xlabel('Times (ms)');
ylabel('f(t)');
title('Mini Assignment #1');
hold off