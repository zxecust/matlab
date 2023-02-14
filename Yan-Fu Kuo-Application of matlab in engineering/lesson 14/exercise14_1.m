v=[0.025 0.035 0.050 0.060 0.080]; t=[20 30 40 50 60];
fit=polyfit(v,t,1);
vfit=v(1):0.001:v(end); tfit=fit(1)*vfit + fit(2);
hold on
plot(t,v,'ko'); plot(tfit,vfit,'r-','LineWidth',1.2);
xlabel('Temperature(℃)'); ylabel('TC output(mV)'); title('Calibration of TC');
grid on;
set(gca, 'GridLineStyle', '--','Xlim',[20 60],'GridColor',[0 0 0],'GridAlpha',0.7);
hold off