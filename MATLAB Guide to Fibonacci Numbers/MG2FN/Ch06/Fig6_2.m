%% // Start;
clc;clear;close all;
tic;

%% //
x = 1:30; 
y = fibonacci(30); 

plot(x,y) 
hold on; 
xlabel('n') 
ylabel('fibonacci(n)')


%% // End;
toc;