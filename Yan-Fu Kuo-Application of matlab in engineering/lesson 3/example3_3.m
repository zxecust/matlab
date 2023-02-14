% example for while
n=1;
while prod(1:n) < 1e100 % prod 阶乘函数
    n=n+1;
end
disp(n)