function f = approximate_fib(n)
% This function generates the nth Fibonacci % number using the approximate formula
f = ((1+sqrt(5))^n) /(sqrt(5)*2^n);
end