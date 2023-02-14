clear

tic
for n = 1:1000000
    for ii = 1:2000
        for jj = 1:2000
            A(ii, jj) = ii + jj;
        end
    end
end
toc