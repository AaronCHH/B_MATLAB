function f = luc(n)
% This function generates the nth Lucas number
f = ((1+sqrt(5))/2)^(n-1) + (1-(1+sqrt(5))/2)^(n-1)