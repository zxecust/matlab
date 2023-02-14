%威布尔分布
clear
x1=0:0.1:5;x2=0:0.1:3;x3=0:0.1:12;
%形状参数对概率密度函数的影响
y1=wblpdf(x1,1,3);y2=wblpdf(x1,1,2);y3=wblpdf(x1,1,1.5);y4=wblpdf(x1,1,1);y5=wblpdf(x1,1,0.5);
subplot(2,2,1);
H1=plot(x1,y1,x1,y2,x1,y3,x1,y4,x1,y5);
legend("m=3","m=2","m=1.5","m=1","m=0.5");
xlabel("x");ylabel("f(x)");title({'The effect of shape parameters';'on the probability density function'});
set(H1,"LineWidth",1.1);set(gca,"FontName","Times New Roman");
%位置参数对于概率密度函数的影响
y6=wblpdf(x2,1,2);y7=wblpdf(x2+0.2,1,2);y8=wblpdf(x2+0.4,1,2);
subplot(2,2,2);
H1=plot(x2,y6,x2,y7,x2,y8);
legend("\gamma=0","\gamma=0.2","\gamma=0.4");
xlabel("x");ylabel("f(x)");title({'The effect of location parameters';'on the probability density function'});
set(H1,"LineWidth",1.1);set(gca,"FontName","Times New Roman");
%尺度参数对于概率密度函数的影响
y9=wblpdf(x3,1,2);y10=wblpdf(x3,3,2);y11=wblpdf(x3,5,2);
subplot(2,2,3);
H1=plot(x3,y9,x3,y10,x3,y11);
legend("\eta=1","\eta=3","\eta=5");
xlabel("x");ylabel("f(x)");title({'The effect of scale parameters';'on the probability density function'});
set(H1,"LineWidth",1.1);set(gca,"FontName","Times New Roman");