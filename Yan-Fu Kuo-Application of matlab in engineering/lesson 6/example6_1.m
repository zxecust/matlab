x = logspace(-1,1,100); 
y = x.^2;
subplot(2,2,1); 
plot(x,y); 
title('Plot');
subplot(2,2,2); 
semilogx(x,y); 
title('Semilogx');
subplot(2,2,3); 
semilogy(x,y); 
title('Semilogy');
subplot(2,2,4); 
loglog(x, y); 
title('Loglog'); 

% 添加网格
set(gca,'Xgrid','on');