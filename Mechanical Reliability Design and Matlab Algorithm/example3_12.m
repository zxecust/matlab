%应力强度呈指数（正态分布）而强度呈正态（指数）分布时的可靠性计算
clear
miuS=100;lambdaS=1/miuS;miuD=200;sgmD=20;
zrA=-miuD/sgmD;
A=1-normcdf(zrA);
B=(1-normcdf(-(miuD-lambdaS*sgmD^2)/sgmD))*exp(-(2*miuD*lambdaS-lambdaS^2*sgmD^2)/2);
R=A-B;