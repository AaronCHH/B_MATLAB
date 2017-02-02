%% // Start;
clc;clear;close all;
tic;

%% //

x = 1:30; 
y = log(fibonacci(30)); 
plot(x,y) 
hold on 
xlabel('n') 
ylabel('log(F(n))')


%% // End;
toc;