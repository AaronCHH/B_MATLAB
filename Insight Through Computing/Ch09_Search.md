
# 9 Search 197
## 9.1 Patterns in Proteins 199
### Linear Search


```python
# %load C9/Eg9_1.m
% Script Eg9_1
% Amino acid frequency counts.
n = input('Enter the number of amino acids: ');
P = RandomProtein(n);

count = zeros(20,1);
for j=1:n
    s = P(3*(j-1)+1:3*j);
    a = FindMnemonic(s);
    i = FindIndex(a);
    count(i) = count(i)+1;
end
bar(count(1:20))
title(sprintf('n = %d',n),'Fontsize',14)
axis([0 21 0 1.1*max(count)])
set(gcf,'position',[30 50 950 600])
set(gca,'xTick',1:20)
set(gca,'xTickLabel',...
    {'Ala','Arg','Asn','Asp','Cys','Glu','Gln','Gly','His','Ile',...
    'Leu','Lys','Met','Phe','Pro','Ser','Thr','Trp','Tyr','Val'})
shg
```

### Matlab: Character arrays
## 9.2 A Roman Numeral Phone Book 208
### Binary Search


```python
# %load C9/Eg9_2.m
% Script Eg9_2
% Checks whether or not a string is a valid Roman Numeral.

clc
% Compute and sort the Roman Numerals...
[RNsort,idx] = RomanPhoneBook();

% Get the input string and see if it occurs in RNsort..
s = input('Enter a Possible Roman Numeral (in single quotes): ');
i = BinSearch(upper(s),RNsort);

% Display the appropriate message...
if i==0
    disp([s ' is not a valid Roman Numeral'])
else
    disp([s sprintf(' is the Roman Numeral for %d',idx(i))])
end
```

### Matlab: Cell arrays
## 9.3 Changing Sign 219
### Bisecting for Roots


```python
# %load C9/Eg9_3.m
% Script Eg9_3
% Illustrates the method of bisection applied to finding the
% smallest positive root of
%     tau(x) = 512x^10 - 1280x^8 + 1120x^6 - 400x^4 + 50x^2 -1

% Initializations...
clc
L0 = 0.0;
R0 = 0.3;
fEvalsMax = 100;
fprintf('Initial interval = [%5.2f,%5.2f]\n',L0,R0)
fprintf('f-evaluation maximum = %2d\n\n',fEvalsMax)
disp('   delta               Root           f-Evals')
disp('------------------------------------------------')
% Apply bisection with increasingly small values for delta...
for delta = logspace(-3,-20,18)
    [L,R,fEvals] = Bisection(@tau,L0,R0,delta,fEvalsMax);
    Root = (L+R)/2;
    fprintf(' %5.1e      %20.18f      %3d\n',delta,Root,fEvals)
end
```

### Matlab: Functions as parameters


```python

```
