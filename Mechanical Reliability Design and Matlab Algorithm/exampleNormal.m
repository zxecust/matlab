%正态分布案例
clear
x1=-1:0.01:1;x2=-1:0.01:2;
%计算概率密度和累积分布
y1=normpdf(x1,0,0.1);y2=normpdf(x1,0.4,0.15);y3=normpdf(x1,0.8,0.15);y4=normpdf(x1,0,0.2);y5=normpdf(x1,0,0.4);
t1=normcdf(x2,0,0.1);t2=normcdf(x2,0.4,0.15);t3=normcdf(x2,0.8,0.15);t4=normcdf(x2,0,0.2);t5=normcdf(x2,0,0.4);
%绘制概率密度函数图
subplot(1,2,1);
H1=plot(x1,y1,x1,y2,x1,y3,x1,y4,x1,y5);
legend("X~N(0,0.1^2)","X~N(0.4,0.15^2)","X~N(0.8,0.15^2)","X~N(0,0.2^2)","X~N(0,0.4^2)",Location="northwest");
set(H1,"LineWidth",1.2);
%绘制累积分布函数
subplot(1,2,2);
H2=plot(x2,t1,x2,t2,x2,t3,x2,t4,x2,t5);
legend("X~N(0,0.1^2)","X~N(0.4,0.15^2)","X~N(0.8,0.15^2)","X~N(0,0.2^2)","X~N(0,0.4^2)",Location="southeast");
set(H2,"LineWidth",1.2);

