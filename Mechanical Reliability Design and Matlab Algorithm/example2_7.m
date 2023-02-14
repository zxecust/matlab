% 二项分布
clear

% n=10;p=0.5;q=1-p;k=0:n;
n=100;p=1/6;q=1-p;k=0:n; % 随着n的增大，曲线越发的平滑
cnk=factorial(n)./factorial(n-k)./factorial(k);
pp=cnk.*p.^k.*q.^(n-k);
plot(k,pp);