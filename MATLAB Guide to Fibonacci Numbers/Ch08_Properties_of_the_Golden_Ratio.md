
# 8. Properties of the Golden Ratio 


```python
import os
os.listdir('Ch08/')
```




    ['.ipynb_checkpoints', 'approximate_fib.m', 'Ch08.ipynb', 'fib.m', '_vti_cnf']




```python
# %load Ch08/approximate_fib.m
function f = approximate_fib(n)
% This function generates the nth Fibonacci % number using the approximate formula
f = ((1+sqrt(5))^n) /(sqrt(5)*2^n);
end
```

---


```python
%reload_ext pymatbridge   
```

    MATLAB closed
    Starting MATLAB on ZMQ socket tcp://127.0.0.1:54983
    Send 'exit' command to kill the server
    ......MATLAB started and connected!
    


```python
%%matlab
phi = (1+sqrt(5))/2
1/phi
```


```python
%%matlab
phi = (1+sqrt(5))/2
phi^3
phi^2 + phi
phi = (1+sqrt(5))/2
phi^4
phi^3 + phi^2
```


```python
%%matlab
phi = (1+sqrt(5))/2
phi^3
2*phi + 1
phi = (1+sqrt(5))/2
phi^4
3*phi +2
```


```python
%%matlab
phi = (1+sqrt(5))/2
1/phi + 1/phi^2
phi = (1+sqrt(5))/2
1/phi^2 + 1/phi^3
1/phi
```


```python
%%matlab
phi = (1+sqrt(5))/2
1/phi^3
2/phi -1
phi = (1+sqrt(5))/2
1/phi^4
2 - 3/phi
```


```python
%%matlab
phi = (1+sqrt(5))/2
1/phi + 1/phi^2
phi + 1/phi^2
phi^2 + 1/phi^2
(phi + 1/phi^2)^2
(phi + 1/phi)^2
phi = (1+sqrt(5))/2
phi + 1/phi
sqrt(5)
phi = (1+sqrt(5))/2
1/phi + 1/phi^2 + 1/phi^3 + 1/phi^4 + 1/phi^5 + 1/phi^6
```


```python
%%matlab
fib(5)
fib(7)
fib(10)
fib(15)
```


    
    ans =
    
        5.0000
    
    
    ans =
    
       13.0000
    
    
    ans =
    
       55.0000
    
    
    ans =
    
      610.0000
    




```python
%%matlab
approximate_fib(1)
approximate_fib(2)
approximate_fib(3)
approximate_fib(4)
approximate_fib(5)
```


    
    ans =
    
        0.7236
    
    
    ans =
    
        1.1708
    
    
    ans =
    
        1.8944
    
    
    ans =
    
        3.0652
    
    
    ans =
    
        4.9597
    




```python
%%matlab
fib(10)
approximate_fib(10)

fib(30)
approximate_fib(30)
```


    
    ans =
    
       55.0000
    
    
    ans =
    
       55.0036
    
    
    ans =
    
       8.3204e+05
    
    
    ans =
    
       8.3204e+05
    




```python

```
