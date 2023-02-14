clear
p=0.0001;n=2000;lambda=n*p;k=2;
pr=lambda^k/factorial(k)*exp(-lambda);
disp(pr);