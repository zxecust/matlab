clear

A = [0 -1 4; 9 -14 25; -34 49 64];
B = A;
for n = 1:9
    if B(n) < 0
        B(n) = 1;
    end
end

disp(A)
disp(B)