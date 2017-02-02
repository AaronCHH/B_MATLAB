%% // Start;
clc;clear;close all;
tic;

%% //

x = 1:30; 
y = ratio(30); 
plot(x,y) 
hold on; 
xlabel('n'); 
ylabel('F(n)/F(n-1)')


%% // End;
toc;