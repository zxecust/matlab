% 用for循环求1到5阶乘的和
sum = 0;
for i = 1:5
    p = 1;
    for j = 1:i
        p = p * j;
    end
    sum = sum + p;
end