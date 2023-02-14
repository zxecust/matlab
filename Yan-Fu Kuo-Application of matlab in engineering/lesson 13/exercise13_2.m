x = 1:14;
data = [1 3 5 5 5 5 7 9 9 9 10 13 14];
temp = tabulate(data); freqy = temp(:, 2);
subplot(1,3,1); bar(x,freqy); xlim([0 14]);
subplot(1,3,2); area(x,freqy); xlim([0 14]);
subplot(1,3,3); stem(x,freqy); xlim([0 14]);