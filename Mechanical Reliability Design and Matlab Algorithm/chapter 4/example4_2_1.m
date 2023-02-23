%使用蒙特卡洛模拟方法解决example4.2
clear
syms r;n=2000;sj=randn(n,3);alpha=0.03;R=0.999;zr=norminv(R);
miuD=667;sgmaD=25.3;D1=miuD+sgmaD.*sj(:,1);
D=mean(D1);sgmaD=std(D1);
miuP=40000;sgmaP=1200;P1=miuP+sgmaP.*sj(:,2);
miuA=pi*r^2;sgmaA=diff(miuA,r)*alpha*r/3;
A1=miuA+sgmaA.*sj(:,3);
S1=P1./A1;S=mean(S1);S=vpa(S);sgmaS=sqrt(mean((S1-S).^2)/n);sgmaS=vpa(sgmaS);
%使用vpa使结果以小数的形式输出
[r]=vpa(solve((D-S)/sqrt(sgmaD^2+sgmaS^2)-zr));
disp(r);