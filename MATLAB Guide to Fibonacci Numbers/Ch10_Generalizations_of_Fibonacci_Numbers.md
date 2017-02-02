
# 10. Generalizations of Fibonacci Numbers 


```python
import os
os.listdir('Ch10/')
```




    ['.ipynb_checkpoints',
     'Ch10.ipynb',
     'heptanacci.m',
     'hexanacci.m',
     'lucas_ratio.m',
     'pentanacci.m',
     'tetranacci.m',
     'tribonacci.m',
     '_vti_cnf']




```python
# %load Ch10/lucas_ratio.m
function r = lucas_ratio(n)
    % This function calculates the ratio oftwo % consecutive Lucas numbers
    f= zeros(n,1);
    r = zeros(n,1);
    f(1)=1;
    f(2)=3;
    
    for k = 3:n
        f(k) = f(k-1) + f(k-2);
        r(k) = f(k)/f(k-1);
    end
```


```python
# %load Ch10/tribonacci.m
function f=tribonacci(n)
% This function generates the first n tribonacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=1;
for k = 4:n
f(k) = f(k-1) + f(k-2) + f(k-3);
end
```


```python
# %load Ch10/tetranacci.m
function f=tetranacci(n)
% This function generates the first n tetranacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=1;
for k = 5:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4);
end
```


```python
# %load Ch10/pentanacci.m
function f=pentanacci(n)
% This function generates the first n pentanacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=0;
f(5)=1;
for k = 6:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4) +f(k-5);
end
```


```python
# %load Ch10/hexanacci.m
function f=hexanacci(n)
% This function generates the first n hexanacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=0;
f(5)=0;
f(6)=1;
for k = 7:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4) + f(k-5) +f(k-6);
end
```


```python
# %load Ch10/heptanacci.m
function f=heptanacci(n)
% This function generates the first n heptanacci numbers
f= zeros(n,1);
f(1)=0;
f(2)=0;
f(3)=0;
f(4)=0;
f(5)=0;
f(6)=0;
f(7)=1;
for k = 8:n
f(k) = f(k-1) + f(k-2) + f(k-3) + f(k-4) + f(k-5) +f(k-6) +f(k-7);
end
```

---


```python
tribonacci(20)
```




    ans =
    
               0
               0
               1
               1
               2
               4
               7
              13
              24
              44
              81
             149
             274
             504
             927
            1705
            3136
            5768
           10609
           19513




```python
solve('x^3 -x^2 -x -1=0');
double(ans)
```




    ans =
    
       1.8393 + 0.0000i
      -0.4196 - 0.6063i
      -0.4196 + 0.6063i




```python
tetranacci(20)
```




    ans =
    
               0
               0
               0
               1
               1
               2
               4
               8
              15
              29
              56
             108
             208
             401
             773
            1490
            2872
            5536
           10671
           20569




```python
solve('x^4 - x^3 -x^2 -x -1=0');
double(ans)
```




    ans =
    
      -0.7748 + 0.0000i
       1.9276 + 0.0000i
      -0.0764 + 0.8147i
      -0.0764 - 0.8147i




```python
pentanacci(20)
```




    ans =
    
               0
               0
               0
               0
               1
               1
               2
               4
               8
              16
              31
              61
             120
             236
             464
             912
            1793
            3525
            6930
           13624




```python
hexanacci(20)
```




    ans =
    
               0
               0
               0
               0
               0
               1
               1
               2
               4
               8
              16
              32
              63
             125
             248
             492
             976
            1936
            3840
            7617




```python
heptanacci(20)
```




    ans =
    
               0
               0
               0
               0
               0
               0
               1
               1
               2
               4
               8
              16
              32
              64
             127
             253
             504
            1004
            2000
            3984




```python
solve('x^2 - x - 1 = 0');
double(ans)
```




    ans =
    
       -0.6180
        1.6180




```python
solve('x^3- x - 1 = 0');
double(ans)
```




    ans =
    
       1.3247 + 0.0000i
      -0.6624 - 0.5623i
      -0.6624 + 0.5623i




```python
solve('x^3- x^2 - 1 = 0');
double(ans)
```




    ans =
    
       1.4656 + 0.0000i
      -0.2328 - 0.7926i
      -0.2328 + 0.7926i




```python
solve('x^4- x - 1 = 0');
double(ans)
```




    ans =
    
      -0.7245 + 0.0000i
       1.2207 + 0.0000i
      -0.2481 - 1.0340i
      -0.2481 + 1.0340i




```python
solve('x^4- x^3 - 1 = 0');
double(ans)
```




    ans =
    
      -0.8192 + 0.0000i
       1.3803 + 0.0000i
       0.2194 + 0.9145i
       0.2194 - 0.9145i




```python
solve('x^5- x - 1 = 0');
double(ans)
```




    ans =
    
       1.1673 + 0.0000i
       0.1812 - 1.0840i
      -0.7649 - 0.3525i
       0.1812 + 1.0840i
      -0.7649 + 0.3525i




```python
solve('x^5- x^2 - 1 = 0');
double(ans)
```




    ans =
    
       1.1939 + 0.0000i
      -0.7515 + 0.7846i
      -0.7515 - 0.7846i
       0.1546 + 0.8281i
       0.1546 - 0.8281i




```python
solve('x^5- x^3 - 1 = 0');
double(ans)
```




    ans =
    
       1.2365 + 0.0000i
      -0.9590 - 0.4284i
       0.3408 + 0.7854i
       0.3408 - 0.7854i
      -0.9590 + 0.4284i




```python
solve('x^5- x^4 - 1 = 0');
double(ans)
```




    ans =
    
       0.5000 - 0.8660i
       0.5000 + 0.8660i
       1.3247 + 0.0000i
      -0.6624 - 0.5623i
      -0.6624 + 0.5623i




```python

```
