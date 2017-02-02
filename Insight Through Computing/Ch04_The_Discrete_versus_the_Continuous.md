
# 4 The Discrete versus the Continuous 63
## 4.1 Connect the Dots 65

### Plotting Continuous Functions


```python
# %load C4/Eg4_1.m
% Script Eg4_1
% Plots the function f(x) = sin(5x)*exp(x/2)/(1 + x^2) across [-2,3].

L = -2;  % Left endpoint
R =  3;  % Right endpoint
N = 200; % Number of sample points
% Obtain the vector of x-values and f-values...
x = linspace(L,R,N);
y = sin(5*x) .* exp(-x/2) ./ (1 + x.^2);
% Plot and label...
plot(x,y,[L R],[0 0],':')
title('The function f(x) = sin(5x) * exp(x/2) / (1 + x^2)')
ylabel('y = f(x)')
xlabel('x')
```

### Matlab: Vectors, elementary graphics

## 4.2 From Cyan to Magenta 79

### Color Computations


```python
# %load C4/Eg4_2.m
% Script Eg4_2
% Displays interpolants of the colors cyan and magenta

% Prepare the figure window...
close all
figure
axis equal off
hold on

% Color initializations...
cyan    = [0 1 1];  % rgb of the "bottom" color
magenta = [1 0 1];  % rgb of the "top" color
n = 10;             % the number of "in between" colors is n-1
x = [0 3 3 0];      % locates the x-values in the tiles
y = [0 0 1 1];      % locates the y-values in the tiles

% Add colored tiles to the figure window...
for j=0:n
    % Display the jth tile and its rgb value...
    f = j/n;
    v = (1-f)*cyan + f*magenta;
    fill(x,y+j,v)
    text(3.5,j+.5,sprintf('[ %4.2f , %4.2f , %4.2f ]',v(1),v(2),v(3)))
end
hold off
shg


```

### Matlab: rgb

## 4.3 One Third Plus One Third Is Not Two Thirds 87

### The Floating Point Environment


```python
# %load C4/Eg4_3.m
% Script Eg4_3
% Floating Point Number Facts

clc
% p = largest positive integer so 1+1/2^p > 1.
x=1; p=0; y=1; z=x+y/2;
while x~=z
    y = y/2;
    p = p+1;
    z = x+y/2;
end
fprintf('p = %2.0f   is the largest positive integer so 1+1/2^p > 1.\n',p)

% q = smallest positive integer so 1/2^q = 0.
x = 1; q = 0;
while x>0
    x = x/2;
    q = q+1;
end;
fprintf('q = %2.0f is the smallest positive integer so 1/2^q == 0.\n',q)

% r = smallest positive integer so 2^r = inf.
x = 1; r = 0;
while x~=inf
    x = 2*x;
    r = r+1;
end
fprintf('r = %2.0f is the smallest positive integer so 2^r == inf.\n',r)



```

### Matlab: eps, inf, NaN
