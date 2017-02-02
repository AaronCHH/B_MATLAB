function f=tribonacci(n)
% This function generates the first n tribonacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=1;
for k = 4:n
f(k) = f(k-1) + f(k-2) + f(k-3);
end