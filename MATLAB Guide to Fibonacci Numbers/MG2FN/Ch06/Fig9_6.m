%% 
clc;clear;
%% 
x = [ 1 2 3 4 5 6 7 8 9 10]; 
y = x.^2; 
z = sqrt(x); 
w = 2*x - 3; 
v = x.^3; 

subplot(2,2,1) 
hold on; 
plot(x,y) 
subplot(2,2,2) 
plot(x,z) 
subplot(2,2,3) 
plot(x,w) 
subplot(2,2,4) 
plot(x,v)