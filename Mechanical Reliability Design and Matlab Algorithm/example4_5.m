%承受扭矩的轴的静强度可靠性设计
clear
format short

syms r;
R=0.999;zr=norminv(R);n=2000;sj=randn(n,8);
miuT=11303000;sgmaT=11303000;T_mt=miuT+sgmaT*sj(:,1);
miuD=344.47;sgmaD=34.447;D_mt=miuD+sgmaD*sj(:,2);
alpha=0.03;sgmar=alpha*r/3;r_mt=r+sgmar*sj(:,3);

%蒙特卡洛处理
r_ave=mean(r_mt);r_ave=vpa(r_ave,5);r=r_ave;
tau_mt=2*T_mt/pi/r^3;tau_ave=mean(tau_mt);tau_ave=vpa(tau_ave,5);
tau_var=sum((tau_ave-tau_mt).^2)/n;tau_var=vpa(tau_var,5);

%使用@创建函数句柄
ft=@(r)((miuD-eval(tau_ave))/sqrt(sgmaD^2+eval(tau_var))-zr);
r=fsolve(ft,2);