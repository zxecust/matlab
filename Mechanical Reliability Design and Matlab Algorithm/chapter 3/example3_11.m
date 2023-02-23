%应力和强度均服从对数正态分布
clear
format long
S=60;sgmS=10;D=100;sgmD=10;
sgmSp=log((sgmS/S)^2+1);sgmDp=log((sgmD/D)^2+1);
miuD=log(D)-sgmDp/2;miuS=log(S)-sgmSp^2;
zr=(miuD-miuS)/sqrt(sgmDp+sgmSp);
R=normcdf(zr);