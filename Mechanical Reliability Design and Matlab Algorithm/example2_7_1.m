clear

n=10;k=0:n;
cnk=factorial(n)./factorial(n-k)./factorial(k);
for p=0.1:0.2:0.9,q=1-p;
    pp=cnk.*p.^k.*q.^(n-k);
    hold on
    plot(k,pp);
end
legend('0.1','0.3','0.5','0.7','0.9',Location='north');