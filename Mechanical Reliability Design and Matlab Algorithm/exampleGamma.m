%伽马分布
clear
%绘制概率密度函数图
x1=0:0.1:15;
y1=gampdf(x1,1,1);y2=gampdf(x1,2,1);y3=gampdf(x1,4,1);y4=gampdf(x1,6,1);
subplot(1,2,1);
H1=plot(x1,y1,x1,y2,x1,y3,x1,y4);
xlabel("x");ylabel("f(x)");
legend("X~\Gamma (1,1)","X~\Gamma (2,1)","X~\Gamma (4,1)","X~\Gamma (6,1)",Location="northeast");
set(H1,"LineWidth",1.2);set(gca,"FontName","Times New Roman","XLim",[0,12]);
%绘制累积分布函数图
x2=0:0.1:15;
cy1=gamcdf(x2,1,1);cy2=gamcdf(x2,2,1);cy3=gamcdf(x2,4,1);cy4=gamcdf(x2,6,1);
subplot(1,2,2);
H1=plot(x2,cy1,x2,cy2,x2,cy3,x2,cy4);
xlabel("x");ylabel("F(x)");
legend("X~\Gamma (1,1)","X~\Gamma (2,1)","X~\Gamma (4,1)","X~\Gamma (6,1)",Location="southeast");
set(H1,"LineWidth",1.2);set(gca,"FontName","Times New Roman");