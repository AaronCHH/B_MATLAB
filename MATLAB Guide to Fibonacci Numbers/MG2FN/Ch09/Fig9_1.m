%% // Start;
clc;clear;close all;
tic;

%% //

x = 1:10; 
y = lucas(10);

plot(x,y) 
hold on 
xlabel('n') 
ylabel('lucas(n)')

%% // End;
toc;