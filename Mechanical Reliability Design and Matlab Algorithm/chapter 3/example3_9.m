%应力与强度均为正态分布时的可靠性计算
clear
format long
%根据已有数据计算可靠度系数(强度之差比标准差平方和开根)
S=380;sgmS=42;D=850;sgmD=81;zr=-(S-D)/sqrt(sgmS^2+sgmD^2);
sgmD1=120;zr1=-(S-D)/sqrt(sgmS^2+sgmD1^2);
%根据可靠度系数和正态分布累积分布函数计算可靠性
R=normcdf(zr);R1=normcdf(zr1);