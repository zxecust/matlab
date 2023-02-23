%对数正态分布
clear
x=0:0.01:10;
%绘制概率密度分布图
subplot(1,2,1);
y1=lognpdf(x,2,0.2);y2=lognpdf(x,2,0.5);y3=lognpdf(x,2,0.1);
H1=plot(x,y1,x,y2,x,y3);
xlabel("x");ylabel("f(x)");
legend("\sigma=0.2","\sigma=0.5","\sigma=0.1",Location="northwest");
set(H1,"LineWidth",1.2);set(gca,"FontName","Times New Roman");
%绘制累积分布函数图
subplot(1,2,2);
cy1=logncdf(x,2,0.2);cy2=logncdf(x,2,0.5);cy3=logncdf(x,2,0.1);
H2=plot(x,cy1,x,cy2,x,cy3);
xlabel("x");ylabel("F(x)");
legend("\sigma=0.2","\sigma=0.5","\sigma=0.1",Location="northwest");
set(H2,"LineWidth",1.2);set(gca,"FontName","Times New Roman");