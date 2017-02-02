
# 4. MATLAB Functions 


```python
%reload_ext pymatbridge
```

    MATLAB closed
    Starting MATLAB on ZMQ socket tcp://127.0.0.1:54059
    Send 'exit' command to kill the server
    ......MATLAB started and connected!
    


```python
%%matlab
% This is an example
cost = 50
profit = 10
sale_price = cost + profit
```


```python
# %load example1.m
%%matlab
% This is an example
cost = 50
profit = 10
sale_price = cost + profit
```


```python
%%matlab
example1
```


```python
# %load example2.m
% This is an example
cost = 50;
profit = 10;
sale_price = cost + profit
```


```python
%%matlab
example2
```


```python
%%matlab
area(3)
area(5)
```


    
    area =
    
       28.2743
    
    
    area =
    
       78.5398
    




```python
%%matlab
% This is an example
cost = 50
profit = 10
sale_price = cost + profit
```


```python
%%matlab
perimeter(2,3)
perimeter(3,7)
perimeter(1.2,5.3)   
```


```python
# %load example3.m
for n = 1:10
	x(n) = n^2;
end
```


```python
%%matlab
example3
x
```


```python
# %load example4.m
for n = 1:3
	for m = 1:3
		y(m,n) = m^2 + m*n + n^2;
	end
end
```


```python
%%matlab
example4
y
```


```python
%%matlab
example5
n
tol
```


```python
%%matlab
example6
cost
```


```python
%%matlab
clc;clear;
cost(4)
cost(6)
cost(8)
```


    
    cost =
    
        12
    
    
    cost =
    
        18
    
    
    cost =
    
        24
    
    
    cost =
    
        20
    




```python
%%matlab
clc;clear;
cost2(6)
cost2(8)
cost2(10)
```


    
    cost =
    
        15
    
    
    cost =
    
        16
    
    
    cost =
    
        15
    




```python
%%matlab
clc;clear;
cost3(6)
cost3(8)
cost3(10)
```


    
    cost =
    
        15
    
    
    cost =
    
        16
    
    
    cost =
    
        15
    




```python

```
