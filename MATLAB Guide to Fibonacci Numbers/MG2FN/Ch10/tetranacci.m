function f=tetranacci(n)
% This function generates the first n tetranacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=1;
for k = 5:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4);
end