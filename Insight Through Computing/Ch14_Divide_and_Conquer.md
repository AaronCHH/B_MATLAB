
# 14 Divide and Conquer 335
## 14.1 Patterns within Patterns 337
### Recursive Tiling


```python
# %load C14/Eg14_1.m
% Script Eg14_1
% Illustrates the function MeshTriangle

close all
x = [0  3  1];
y = [0  0  2];
for L = 0:4
   figure
   axis equal off
   hold on
   MeshTriangle(x,y,L)
end





```

### Matlab: Recursive functions
## 14.2 N and Half N 344
### Merge Sort


```python
# %load C14/Eg14_2.m
% Script Eg14_2
% Benchmarks MergeSortI
clc
disp('      N       tMerge    tInsert')
disp('-----------------------------------')
dRange = 14:20;
dRange = 10:14;
for d = dRange
    N = 2^d; x = randn(N,1);
    if d<=15
        tic;
        y = InsertionSort(x);
        tInsert = toc;
        tic;
        y = MergeSortI(x);
        tMerge = toc;
        fprintf('%10d   %6.3f     %6.3f\n',N,tMerge,tInsert)
    else
        tic
        y = MergeSortI(x);
        tMerge = toc;
        fprintf('%10d   %6.3f\n',N,tMerge)
    end
end
```

### Matlab: More practice with recursion
## 14.3 Looking for Trouble 354
### Adaptive Interpolation


```python
# %load C14/Eg14_3.m
% Script Eg14_3
% Illustrates pwLAdapt with the function Rough on [0,6].
close all

% Produce a nice "linspace" plot...
N = 1000;
figure
set(gcf,'position',[50 50 1000 500])
L = 0.0;
R = 6.0;
x = linspace(L,R,N);
y = Rough(x);
plot(x,y,'r',[L R],[0 0],'k')
axis([L R -10 120])
pause(1)

% Now show a more efficient distribution of f-evals...
tol = (R-L)/(N-1); fL = Rough(L); fR = Rough(R);
hold on
[x,y] = pwLadapt(@Rough,L,fL,R,fR,tol);
plot(x,y,'.k','Markersize',10)
title(sprintf('Number of f-Evaluations = %1d',length(x)),'Fontsize',14)
pause(1)
% And connect...
plot(x,y,'k')
```

### Matlab: Still more practice with recursion


```python

```
