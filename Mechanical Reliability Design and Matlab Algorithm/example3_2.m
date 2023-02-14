%蒙特卡罗模拟
clear
timeConsumption=zeros(1,9);eA=zeros(1,9);varA=zeros(1,9);stdA=zeros(1,9);
% !!当k的数值大于9的时候，计算的耗时会呈指数上升
for k=1:1:9
    t1=cputime;
    n=10^k;miu=10;sigma=0.5;sj=randn(n,1);
    r=miu+sigma*sj;A=pi*r.^2;eA(k)=mean(A);varA(k)=var(A,1);stdA(k)=std(A,1);
    t2=cputime;
    timeConsumption(k)=t2-t1;
    fprintf("when k = %d, exception = %f, standard deviation = %f, consume %1.8f s.\n",k,eA(k),stdA(k),timeConsumption(k));
end
k=1:1:9;
%the relationship between k and mean value or standard deviation
subplot(1,2,1);[hAx,hLine1,hLine2]=plotyy(k,varA,k,stdA);
set(hLine1,"LineWidth",1.2);set(hLine2,"LineWidth",1.2);
xlabel("k");ylabel(hAx(1),'mean value');ylabel(hAx(2),'standard deviation');
legend("mean value","standard deviation");
title({'the relationship between';'k and mean value or standard deviation'});
set(hAx,"FontName","Times New Roman","xlim",[1,9]);
%the relationship between k and time consumpton of programm
subplot(1,2,2);H=plot(k,timeConsumption);set(H,"LineWidth",1);
set(gca,"FontName","Times New Roman","ylim",[0,60],"xlim",[1,9]);
xlabel("k");ylabel("time consumption(s)");
title({'the relationship between';'k and time consumpton of programm'});