%% // Start;
clc;clear;close all;
tic;

%% //
x = 1:10;
y = fibonacci(10);

plot(x,y)
hold on
xlabel('n')
ylabel('fibonacci(n)')

%% // End;
toc;