clear
p=0.00001;n=50000;lambda=n*p;k=0:1:2;
pr=lambda.^k./factorial(k)*exp(-lambda);
pr=pr';
sum(pr)