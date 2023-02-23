%根据S-N曲线计算疲劳寿命
clear
S1=11.2;N1=1.5e5;S2=20;N2=0.8e4;S=15;
%S^m*N=const
m=log(N2/N1)/log(S1/S2);
N=N1*(S1/S)^m;
%以浮点型输出m的值，以科学计数法输出N的值
fprintf("m=%f,N=%e",m,N);