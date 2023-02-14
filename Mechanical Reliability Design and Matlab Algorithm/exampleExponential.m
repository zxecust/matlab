%指数分布案例
clear
x=0:0.01:10;lambda=1;
%绘制概率密度函数图
y1=exppdf(x,lambda);y2=exppdf(x,lambda+1);y3=exppdf(x,lambda+2);y4=exppdf(x,lambda+3);
subplot(1,2,1);
H1=plot(x,y1,x,y2,x,y3,x,y4);
legend("X:E(1)","X:E(2)","X:E(3)","X:E(4)");
set(H1,"LineWidth",1.2);
%绘制累积分布函数图
c1=expcdf(x,lambda);c2=expcdf(x,lambda+1);c3=expcdf(x,lambda+2);c4=expcdf(x,lambda+3);
subplot(1,2,2);
H2=plot(x,c1,x,c2,x,c3,x,c4);
legend("X:E(1)","X:E(2)","X:E(3)","X:E(4)");
set(H2,"LineWidth",1.2);