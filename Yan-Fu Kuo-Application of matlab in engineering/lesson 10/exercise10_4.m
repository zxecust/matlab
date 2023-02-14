% exercise 4
hold on
h = 0.1;
while(h>=0.001)
    x = 0:h:2*pi;
    y = exp(-x) .* sin((x.^2)/2);
    m = diff(y) ./ diff(x);
    plot(x(1:end-1),m);
    h = h/10;
end
hold off
set(gca,'XLim',[0, 2*pi]); set(gca, 'YLim', [-0.3,0.3]);
set(gca,'FontSize',18); set(gca,'FontName','Times New Roman');
set(gca,'XTick',0:pi/2:2*pi); set(gca,'XTickLabel',{'0','p/2','p','3p/2','2p'});
h = legend('h=0.1','h=0.01','h=0.001'); set(h,'FontName','Times New Roman');
box on