% 用matlab绘制同一坐标系下的两条曲线
x=0:0.01:20;
y1=200*exp(-0.05*x).*sin(x);
y2=0.8*exp(-0.5*x).*sin(10*x);
figure
[AX,H1,H2 ]=plotyy(x,y1,x,y2,'plot');
% { yyaxis left
% plot(x,y1)
% yyaxis right
% plot(x,y2) 
set(get(AX(1),'Ylabel'),'String','Slow Decay')
set(get(AX(2),'Ylabel'),'String','Fast Decay')
xlabel('time (\musec)')
title('Multiple Decay Rates')
set(H1,'LineStyle','--')
set(H2,'LineStyle',':')