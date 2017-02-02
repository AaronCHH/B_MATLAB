
# 8 Reordering 179
## 8.1 Cut and Deal 181
### The Perfect Shuffle


```python
# %load C8/Eg8_1.m
% Script Eg8_1
% Displays the restoration index for a range of n-values

close all
nVals = 2:2:60;
rVals = [];
for n = nVals
   % Initializations....
   x0 = (1:n)'; 
   x  = PerfectShuffle(x0); 
   k = 1;
   % Keep shuffling until a match with x0...
   while sum(abs(x-x0))>0
       x = PerfectShuffle(x);
       k = k+1;
   end
   rVals = [rVals k];
end
% Display...
bar(nVals,rVals)
axis([0 62 0 60])
xlabel('n','Fontsize',14)
ylabel('Restoration Index','Fontsize',14)
title('Restoration Via Repeated Perfect Shuffles','Fontsize',14)
grid on
shg
```

### Matlab: More practice with vectors and subscripting
## 8.2 Size Place 188
### Sorting


```python
# %load C8/Eg8_2.m
% Script Eg8_2
% Compares bubble sort and insertion sort.

% Tabulate swaps and comparisons for a random x ...
clc
disp('            Bubble Sort             Insertion Sort  ')
disp('    n    Compares    Swaps       Compares      Swaps')
disp('-------------------------------------------------------')
for n = [10 20 40 80 160 320 640 1280]
    x = rand(n,1);
    [yB,TCBubble,TSBubble] = BubbleSort(x);
    [yI,TCInsert,TSInsert] = InsertionSort(x);
    fprintf('%5d   %8d  %8d      %8d    %8d   \n', ...
            n, TCBubble,TSBubble, TCInsert,TSInsert)
end

N = 50000;
x = rand(N,1);
tic
[yB,TCBubble,TSBubble] = BubbleSort(x);
TimeBubble = toc;
tic
[yI,TCInsert,TSINsert] = InsertionSort(x);
TimeInsert = toc;
fprintf('\n\nTimeBubble/TimeInsert = %5.3f  (N = %1d)\n', ...
        TimeBubble/TimeInsert, N)





```

### Matlab: sort


```python

```
