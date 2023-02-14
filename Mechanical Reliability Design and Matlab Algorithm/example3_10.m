%应力与强度均为正态分布时的可靠性计算
clear
format long

S=352;sgmS=40.2;Rs=100;sgmRs=16;D=502;
S=S-Rs;sgmS=sqrt(sgmS^2+sgmRs^2);
R=0.999;zr=norminv(R);
sgmD=sqrt(((D-S)/zr)^2-sgmS^2);