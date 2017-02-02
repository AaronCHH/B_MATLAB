function f=random_fibonacci(n)
% This function generates the first n random Fibonacci numbers
f= zeros(n,1);
f(1)=1;
f(2)=2;
o = [-1,1];
s = o(ceil(2.0*rand(1,1)));
for k = 3:n
    f(k) = f(k-1) + s*f(k-2);
end