%应力和强度均为威布尔分布的可靠性计算
clear
syms y;
S0=100;mS=2;thetaS=350;D0=120;mD=3;thetaD=800;yetaS=thetaS-S0;yetaD=thetaD-D0;
ft=exp(-y-(yetaD/yetaS*y^(1/mD)+(D0-S0)/yetaS)^mS);
F=vpa(int((ft),0,inf));
R=1-F;