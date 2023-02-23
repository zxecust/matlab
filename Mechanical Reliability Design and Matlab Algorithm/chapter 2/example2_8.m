clear

n=15;p=0.1;q=1-p;k=0:n;
cnk=factorial(n)./factorial(n-k)./factorial(k);
pp=cnk.*p.^k.*q.^(n-k);
plot(k,pp);grid on