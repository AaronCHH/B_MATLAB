function r=ratio(n) 
% This function calculates the ratio of two consecutive Fibonacci numbers 
f = zeros(n,1); 
r = zeros(n,1); 
f(1)=1; 
f(2)=2; 
for k = 3:n
	f(k) = f(k-1) + f(k-2);
	r(k) = f(k)/f(k-1); 
end

