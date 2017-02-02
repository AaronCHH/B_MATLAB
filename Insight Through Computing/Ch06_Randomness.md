
# 6 Randomness 129

## 6.1 Safety in Numbers 131

### Monte Carlo Simulation


```python
# %load C6/Eg6_1.m
% Script File: Eg6_1
% Pi computation with uniform and normal distributions

% Initializations
n = 10000; rand('seed',0); randn('seed',0);

% Throw Darts Uniformly...
x = -1+2*rand(n,1);
y = -1+2*rand(n,1);
Hits = 0;
for k=1:n
    % Check the k-th dart throw...
    if x(k)^2 + y(k)^2 <= 1
        Hits = Hits + 1;
    end
end
piEstU = 4*(Hits/n);

% Throw Darts with Aiming...
sigma = .4;
x = sigma*randn(n,1);
y = sigma*randn(n,1);
Hits = 0;
nSquare = 0;
for k=1:n
    % Check the k-th dart throw...
    if abs(x(k))<=1 && abs(y(k))<=1
        nSquare = nSquare + 1;
        if x(k)^2 + y(k)^2 <= 1
            Hits = Hits + 1;
        end
    end
end
piEstN = 4*(Hits/nSquare);

% Display the estimates...
clc
fprintf('n: %1d\n',n)
fprintf('Pi Estimate via Uniform Distribution: %7.5f\n',piEstU)
fprintf('Pi Estimate via N(0,%5.2f)          : %7.5f\n',sigma,piEstN)





```

### Matlab: More practice with boolean expressions

## 6.2 Dice and Compass 143

### Random Walks


```python
# %load C6/Eg6_2.m
% Script Eg6_2
% Estimates the average number of hops required for the robot to
% reach the boundary.

clc
disp('   n    Average to Boundary')
disp('---------------------------')
nTrials = 100;
for n = 5:5:50
    s = 0;
    for k=1:nTrials
        [x,y] = RandomWalk2D(n);
        s = s+ length(x);
    end
    ave = s/nTrials;
    fprintf(' %3d         %8.3f\n',n,ave)
end
fprintf('\n\n(Results based on %d trials)\n',nTrials)
```

### Matlab: More practice with while-loops

## 6.3 Order from Chaos 149

### Polygon Averaging


```python
# %load C6/Eg6_3.m
% Script Eg6_3
% Polygon Smoothing

% Initializations...
close all
n = input('Enter the number of polygon edges: ');
nSmoothings = input('Enter the number of smoothings: ');

% Generate and display a random polygon
x = rand(n,1); y = rand(n,1);
figure
set(gcf,'position',[100 100 1000 500])
subplot(1,2,1)
plot([x;x(1)],[y;y(1)],'k',x,y,'or')
axis tight off
title('Original Polygon','FontWeight','bold','FontSize',14)

% Repeatedly smooth and display the polygon...
for k=1:nSmoothings
    subplot(1,2,2)
    [x,y] = Smooth(x,y);
    plot([x ; x(1)],[y ; y(1)],'k',x,y,'or')
    axis tight off
    title(sprintf('After %d Smoothings',k), ...
          'FontWeight','bold','FontSize',14)
    pause(.1)
end



```

### Matlab: More practice with graphics and vectors


```python

```
