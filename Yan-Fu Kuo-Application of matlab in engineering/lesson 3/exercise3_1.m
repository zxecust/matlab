clear

% 用for实现从1到999的求和
sum = 0;
for m = 1:1:999
    sum = sum + m;
end
disp(sum)

% 用while实现从1到999的求和
sum1 = 0;
m = 0;
while m <= 999
    sum1 = sum1 + m;
    m = m + 1;
end
disp(sum1)