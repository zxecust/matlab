clear
n=100000;miuX=20000;sigmaX=2000;miuY=1000;sigmaY=80;s=randn(n,2);
X=miuX+sigmaX.*s(:,1);Y=miuY+sigmaY.*s(:,2);
F=X./Y;meanF=mean(F);varF=var(F,1);stdF=std(F,1);
fprintf("exception = %f, standard deviation = %f\n",meanF,stdF);