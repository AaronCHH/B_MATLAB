
# 3. Solving Equations 


```python
%load_ext pymatbridge
```


```python
%%matlab
p = [2 3]
roots(p)
```


```python
%%matlab
p = [5 3 -4]
roots(p)
```


```python
%%matlab
p = [2 -3 -5 1 0 -1]
roots(p)
```


```python
%%matlab
A = [1 -3 ; 4 6]
b = [5 ; 3]
x = inv(A)*b  
```


```python
%%matlab
A = [1 -3 ; 4 6]
b = [5 ; 3]
x = A\b
```


```python
%%matlab
A = [2 -4 -1 3 -1 ; 1 1 -2 0 1 ; -1 -3 0 1 3 ; 3 -1 -1 4 -1 ; 1 1 -1 2 0]
b = [3 ; 6 ; -4 ; 1 ; 5]
x = A\b
```

###Solving Equations with the MATLAB Symbolic Math Toolbox


```python
%%matlab
sym x 
sym a
sym b
x = solve('a*x + b = 0')
```


```python
%%matlab
sym x
sym a
sym b
sym c
x = solve('a*x^2 + b*x + c = 0')
```


```python
%%matlab
sym x
x = solve('exp(x)-sin(x) = 0')
```


```python
%%matlab
sym x
sym y
sym a
sym b
sym c
[x,y] = solve('a*x - b*y - c = 0', '2*a*x + b - 9*c = 0')
```


```python
%%matlab
sym x
sym y
[x,y] = solve('x^3 - x*y + 3 = 0', 'x^2 -2*y^2 - 5 = 0')
```


```python

```
