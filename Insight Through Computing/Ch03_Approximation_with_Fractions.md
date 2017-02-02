
# 3 Approximation with Fractions 45

## 3.1 22/7ths and Counting 47

### Proximity to Pi


```python
# %load C3/Eg3_1.m
% Script Eg3_1
% Rational Approximation of pi

% Acquire the numerator/denominator limit...
M = input('Enter M:');

% Initializations...
pBest = 1;                      % Best numerator ``found so far''
qBest = 1;                      % Best denominator ``found so far''...
err_pq = abs(pBest/qBest - pi); % Error in current best fraction...

% Check out all possible denominators...
for q = 1:M
    % Initializations for the p-search...
    p0 = 1;
    e0 = abs(pi - p0/q);
    % For this q, find the best numerator p0...
    for p=1:M
        if abs(pi - p/q) < e0
            % A new best numerator has been found for this q...
            p0 = p;
            e0 = abs(pi - p/q);
        end
    end
    % Check to see if we have a new best quotient for this q...
    if  e0 < err_pq
        pBest = p0;
        qBest = q;
        err_pq = e0;
    end
end
MyPi = pBest/qBest;
% Display Results
clc
fprintf('M     = %1d\npBest = %1d\nqBest = %1d\n',...
        M,pBest,qBest)
fprintf('MyPi  = %17.15f\npi    = %17.15f\nerror = %17.15f\n\n',...
        MyPi,pi,err_pq)


```


```python
# %load C3/FasterEg3_1.m
% Script FasterEg3_1
% Rational Approximation of pi

% Acquire the numerator/denominator limit...
M = input('Enter M:');

% Initializations...
pBest = 1;                      % Best numerator ``found so far''
qBest = 1;                      % Best denominator ``found so far''...
err_pq = abs(pBest/qBest - pi); % Error in current best fraction...

% Check out all possible denominators...
for q = 1:ceil(M/pi)
    % For this q, find the best numerator p0...
    pMinus = floor(pi*q); errMinus = abs(pi - pMinus/q);
    pPlus  = ceil(pi*q);  errPlus  = abs(pi - pPlus/q);
    if errMinus < errPlus
        p0 = pMinus; e0 = errMinus;
    else
        p0 = pPlus;  e0 = errPlus;
    end
    % Check to see if we have a new best quotient for this q...
    if  e0 < err_pq
        pBest = p0;
        qBest = q;
        err_pq = e0;
    end
end
MyPi = pBest/qBest;
clc
fprintf('M     = %1d\npBest = %1d\nqBest = %1d\n',M,pBest,qBest)
fprintf('MyPi  = %17.15f\npi    = %17.15f\nerror = %17.15f\n\n',...
        MyPi,pi,err_pq)


```

### Matlab: Nested loops, benchmarking

## 3.2 Not Quite Perfect 56

### Fibonacci Quotients and the Golden Ratio


```python
# %load C3/Eg3_2.m
% Script Eg3_2
% Fibonacci numbers and the Golden Ratio

% Initializations
clc
disp('   n        f_n             r_n  ')
disp('---------------------------------------')
tol = 10^-15;
n = 2;
f_old = 1;                 % n-1-st  Fibonacci number
f_cur = 1;                 % n-th    Fibonacci number
f_new = 2;                 % n+1-st  Fibonacci number
r_cur = f_cur/f_old;       % n-th    Golden Ratio estimate
r_new = f_new/f_cur;       % n+1-st  Golden Ratio estimate
fprintf('  %2d   %8d    %20.15f \n',n,f_cur,r_cur)

while (abs(r_new - r_cur)>tol)
    % Increase n and update...
    n = n+1;
    f_old = f_cur;
    f_cur = f_new;
    f_new = f_old + f_cur;
    r_cur = r_new;
    r_new = f_new/f_cur;
    fprintf('  %2d   %8d    %20.15f \n',n,f_cur,r_cur)
end






```

### Matlab: More complicated while-loops


```python

```
