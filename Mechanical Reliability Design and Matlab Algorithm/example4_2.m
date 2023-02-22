%受拉零件静强度可靠性计算
clear
syms r;alpha=0.03;R=0.999;zr=norminv(R);miuD=667;sgmaD=25.3;miuP=40000;sgmaP=1200;miuA=pi*r^2;
sgmaA=diff(miuA,r)*alpha*r/3;miuS=miuP/miuA;sgmaS=sqrt((miuP^2*sgmaA^2+miuA^2*sgmaP^2)/(miuA^2+sgmaA^2))/miuA;
[r]=solve((miuD-miuS)/sqrt(sgmaD^2+sgmaS^2)-zr);
r=vpa(r);disp(r);