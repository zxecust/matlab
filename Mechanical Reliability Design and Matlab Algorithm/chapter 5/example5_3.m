%已知威布尔分布的实验数据，求解威布尔分布的三个参数
clear
%疲劳寿命*100000次
N=[4 5 6 7.3 8.2 9 10.5 12]'*1e5;
%f(x)=b*a^(-b)*(x-c)^(b-1)*exp(-((x-c)/a)^b)
%a 尺度参数
%b 形状参数
%c 位置参数

x=N;x_range=[min(x) max(x) max(x)/min(x)];
alpha=0.05; %置信区间
c=linspace(0,min(x)-1,1000)';Len_c=length(c);
%构建空矩阵，预分配内存，提高运行效率
%a_b=zeros(Len_c,2);pci=cell(Len_c);lnL=zeros(Len_c);

for i=1:Len_c
    [a_b(i,:),pci{i}]=wblfit(x-c(i),alpha);
    %[parmHat,parmCI] = wblfit(x,alpha)
    %wblfit - Weibull parameter estimates
        %This MATLAB function returns the estimates of Weibull distribution
        %parameters (shape and scale), given the sample data in x.
    lnL(i,1)=-wbllike([a_b(i,:)],x-c(i)); 
    %[logL,AVAR] = wbllike(params,data)
        %wbllike - Weibull negative log-likelihood
        %This MATLAB function returns the Weibull log-likelihood.
    if a_b(i,2)<=1
        break;
    end
end

c=c(1:i);
lnL_a_b_c=sortrows([lnL a_b c],-1);
% sortrows - Sort rows of matrix or table
    %This MATLAB function sorts the rows of a matrix in ascending order based
    %on the elements in the first column.
a_b_c=lnL_a_b_c(1,2:end);%遍历位置参数c时的极大似然估计
lnL=lnL_a_b_c(1);%样本x最大对数似然值lnx

a=a_b_c(1);b=a_b_c(2);c=a_b_c(3);
f=@(x,a,b,c) b*a^(-b)*(x-c).^(b-1).*exp(-((x-c)/a).^b);
t=linspace(c,max(x)*1.5,500);
y=f(t,a,b,c);figure('name','wblthree');plot(t,y,'r');

hold on
axis([0 max(t) 0 max(y)*1.2]);
text(max(t)/4,max(y)/2,['a=' num2str(a,'%0.1f') ',b=' num2str(b,'%0.3f') ...
    ',c=' num2str(c,'%0.0f')],'fontsize',12,'color','black','FontName',"Times New Roman");

disp(a);disp(b);disp(c);
R=[0.9 0.5];c9=b*log(a-c);y9=log(log(1./R));x9=(y9+c9)/b;NR=c+exp(x9);
disp(NR);