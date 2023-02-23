%用蒙特卡洛方法解决梁的静强度可靠性计算问题
clear
format short

syms h;
R=0.9990;zr=norminv(R);n=20;sj=randn(n,8);
miuL=3048;sgmaL=3.175/3;L_mt=miuL+sgmaL.*sj(:,1);
miuA=1828.8;sgmaA=3.175/3;A_mt=miuA+sgmaA*sj(:,2);
miuP=27011.5;sgmaP=890/3;P_mt=miuP+sgmaP*sj(:,3);
miuD=1171.2;sgmaD=32.794;D_mt=miuD+sgmaD*sj(:,4);

%下面的计算是根据工字梁的几何形状决定的，具体可查《机械设计手册》
b=0.92*h;d=h/15.7;t=b/8.88;C=h/2;
%工字梁惯性矩
I=(b*h^3-(b-d)*(h-2*t)^3)/12;
IC=I/C;IC=vpa(IC,5);

%蒙特卡洛处理
M_mt=P_mt.*A_mt.*(1-A_mt./L_mt);
M_ave=mean(M_mt);M_var=sum((M_mt-M_ave).^2)/n;

S_mt=M_mt./IC;S_mt=vpa(S_mt,5);
S_ave=mean(S_mt);S_var=sum((S_mt-S_ave).^2)/n;S_var=vpa(S_var);

ft=@(h)((miuD-eval(S_ave))/sqrt(sgmaD^2+eval(S_var))-zr);
h=fsolve(ft,2);

%最终计算结果
b=0.92*h;d=h/15.7;t=b/8.88;C=h/2;