clear
p=0.05;n=100;lambda=n*p;k=0:7;e=2.71828;
pr=lambda.^k./factorial(k).*e^(-lambda);
pr=pr'; %矩阵转置
sum(pr)