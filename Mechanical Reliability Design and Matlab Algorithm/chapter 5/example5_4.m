%使用中位秩求解可靠度
%公式推导见《机械可靠性设计与Matlab算法》148页
clear
N=[4 5 6 7.3 8.2 9 10.5 12]'*1e5;
n=8;pR=zeros(n,1);
for i=1:n
    pR(i)=1-(i-0.3)/(n+0.4);
end
pR=pR';pF=1-pR;
y1=log(1./pR);y2=log(y1);x=log(N);
plot(x,y2);