function f=heptanacci(n)
% This function generates the first n heptanacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=0;
f(5)=0;
f(6)=0;
f(7)=1;
for k = 8:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4) + f(k-5) +f(k-6) +f(k-7);
end