%应力为正态分布而强度为威布尔分布的可靠性计算
clear
syms y;delta0=100;m=3;theta=130;
miuS=95;sgmS=0.1*miuS;
C=(theta-delta0)/sgmS;A=(delta0-miuS)/sgmS;
ft=exp((-1/2)*(C*y+A)^2-y^m);
k1=vpa(int((ft),0,inf));k2=k1*C/sqrt(2*pi);k3=normcdf(A);
F=1-k3-k2;R=1-F;