function f=lucas(n) 
% This function generates the first n Lucas numbers 
f = zeros(n,1); 
f(1)=1; 
f(2)=3; 

for k = 3:n
    f(k) = f(k-1) + f(k-2); 
end