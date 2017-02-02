
# 2 Limits and Error 27

## 2.1 Tiling a Disk 29

### Summation


```python
# %load C2/Eg2_1.m
% Script Eg2_1
% Pi Via Tiling

% Enter the disk radius...
clc
n = input('Enter an  integral radius n: ');

% Tile just the first quadrant, then multiply by four...
N1 = 0;
for k = 1:n
    % Add in the number of uncut tiles in row k...
    m = floor(sqrt(n^2 - k^2));
    N1 = N1 + m;
end

% Display the estimate...
rho_n = 4*N1/n^2;
clc
fprintf('n      = %1d\n',n)
fprintf('rho_n  = %12.8f\n',rho_n)
fprintf('Error  = %12.8f\n',abs(pi-rho_n))
```

### Matlab: The for-loop

## 2.2 Inside/Outside Polygons 36

### Sequences


```python
# %load C2/Eg2_2.m
% Script Eg2_2
% Pi Via Polygons

% Input the iteration parameters...
clc
delta = input('Enter the error tolerance:');
nMax  = input('Enter the iteration bound:');

% The triangle case...
n = 3;                        % Number of Polygon Edges
A_n = (n/2)*sin(2*pi/n);      % Inscribed Area
B_n = n*tan(pi/n);            % Circumscribed Area
ErrorBound = B_n - A_n;       % The error bound

% Iterate while error too big and n sufficiently small...
while (ErrorBound  > delta  && n < nMax)
    n = n+1;
    A_n = (n/2)*sin(2*pi/n);
    B_n = n*tan(pi/n);
    ErrorBound = B_n - A_n;
end

% Display the final approximation...
nStar = n;
rho_nStar = (A_n + B_n)/2;
clc
fprintf(' delta = %10.3e\n nStar = %1d\n nMax  = %1d\n\n',...
                                               delta,nStar,nMax)
fprintf(' rho_nStar = %20.15f\n Pi        = %20.15f\n',...
                                                   rho_nStar,pi)



```

### Matlab: The while-loop


```python

```
