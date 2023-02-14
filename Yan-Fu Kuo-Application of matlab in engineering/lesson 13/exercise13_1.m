load stockreturns;
x4 = stocks(:, 4);
ex.mean = mean(x4);  
ex.median = median(x4);  
ex.mode = mode(x4);  
ex.quartile([1 2]) = prctile(x4, [0.25 0.75]);
ex.range = range(x4);  
ex.interquartile_range = range(ex.quartile);
ex.variance = var(x4);
ex.standard_deviation = std(x4);
disp(ex); 