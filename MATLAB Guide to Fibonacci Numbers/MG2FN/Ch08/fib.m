function f=fib(n)
% This function generates the nth Fibonacci % number
f= ((1+sqrt(5))^n -(1-sqrt(5))^n) /(sqrt(5)*2^n);