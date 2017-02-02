
# 5 Abstraction 95

## 5.1 Reshaping Rectangles 97

### A Square and a Root


```python
# %load C5/Eg5_1.m
% Script Eg5_1
% Examines the relative error in MySqrt

clc
disp('    a       Relative Error')
disp('             in MySqrt(a)')
disp('--------------------------')
for i = -6:6
    a = 10^i;
    y = sqrt(a);
    z = MySqrt(a);
    relErr = abs(y - z)/y;
    fprintf('%7.0e    %15.7e\n',a,relErr)
end
```


```python
# %load C5/MySqrt.m
function s = MySqrt(A)
% A is a non-negative real number and s is an approximation
% to its square root.

if A == 0
    % Nothing to do in this case...
    s = 0;
else
    % The initial rectangle is A-by-1...
    L = A; W = 1;
    % Iterate until the difference between L and W is less than L/10^15...
    while abs(L-W) >  (10^-15)*L
        % The new L is the average of the current L and W...
        L = (L+W)/2; W = A/L;
    end
    s = L;
end


```

### Matlab: Simple functions

## 5.2 Oval Odometer 109

### Ellipse Perimeter


```python
# %load C5/Eg5_2A.m
% Script Eg5_2A
% Explores the accuracy of P_inner and P_outer

% Acquire the semiaxes...
a = input('Enter a:');
b = input('Enter b:');
clc
fprintf('a = %5.3f  b = %5.3f\n\n',a,b)
disp('    n         RelErrEst')
disp('-------------------------')
for n = logspace(1,6,6)
    Inner = P_inner(a,b,n);
    Outer = P_outer(a,b,n);
    Ave = (Inner + Outer)/2;
    % tol = 1/n^2; Ave = P_ave(a,b,tol);
    relErrEst = (Outer-Inner)/(2*Ave);
    fprintf('%6.2e   %10.6e\n',n,relErrEst)
end
```


```python
# %load C5/Eg5_2B.m
% Script Eg5_2B
% Explores the performance of P_ave

% Acquire the semiaxes...
a = input('Enter a:');
b = input('Enter b:');
clc
fprintf('a = %5.3f  b = %5.3f\n\n',a,b)
disp('    tol          Perimeter')
disp('-------------------------------')
for tol = logspace(-1,-12,12)
    P = P_ave(a,b,tol);
    fprintf('%6.2e   %18.12f\n',tol,P)
end
```

### Matlab: Functions with multiple input parameters

## 5.3 The Betsy Ross Problem 118

### Design Parameters


```python
# %load C5/Eg5_3.m
% Script Eg5_3
% Illustrates DrawFlag

% Initializations
close all
figure
axis equal off
hold on
SW = 1;               % Stripe width
FW = 13*SW;           % Flag width
GR = (1+sqrt(5))/2;   % Golden ratio
FL = GR*FW;           % Flag length
RR = 2.5*SW;          % Ring radius
SR = 0.5*SW;          % Star radius
% Display four flags with different blue lengths...
BL = .30*FL; DrawFlag( 0, 0,FL,FW,BL,RR,SR)
BL = .35*FL; DrawFlag(25, 0,FL,FW,BL,RR,SR)
BL = .40*FL; DrawFlag( 0,16,FL,FW,BL,RR,SR)
BL = .45*FL; DrawFlag(25,16,FL,FW,BL,RR,SR)



```

### Matlab: Graphics functions


```python

```
