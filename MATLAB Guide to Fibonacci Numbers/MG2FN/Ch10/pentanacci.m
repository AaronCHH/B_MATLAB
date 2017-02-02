function f=pentanacci(n)
% This function generates the first n pentanacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=0;
f(5)=1;
for k = 6:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4) +f(k-5);
end