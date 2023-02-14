%泊松分布案例
clear;
x=(0:15)';
k=[1,2,5,10];
y1=[];y2=[];
for i=1:length(k)
    y1=[y1,poisspdf(x,k(i))];
    y2=[y2,poisscdf(x,k(i))];
end
subplot(1,2,1);
plot(x,y1),grid on;
%figure
subplot(1,2,2);
plot(x,y2),grid on;
