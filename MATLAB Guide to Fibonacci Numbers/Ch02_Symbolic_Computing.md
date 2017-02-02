
## 2. Symbolic Computing


```python
%load_ext pymatbridge
```

    Starting MATLAB on ZMQ socket tcp://127.0.0.1:56336
    Send 'exit' command to kill the server
    ......MATLAB started and connected!
    


```python
%%matlab
sym(1/2)
1/2+3/5
(1/2)+(3/5)
sym((1/2)+(3/5))
```


     
    ans =
     
    1/2
     
    
    ans =
    
        1.1000
    
    
    ans =
    
        1.1000
    
     
    ans =
     
    11/10
     




```python
%%matlab
x = 1/2
y = 2/3
sym(x)
sym(y)
z = sym(x-y)
```


    
    x =
    
        0.5000
    
    
    y =
    
        0.6667
    
     
    ans =
     
    1/2
     
     
    ans =
     
    2/3
     
     
    z =
     
    -1/6
     




```python
%%matlab
r = 15/7
sym(r)
volume = sym(4*pi*r^3/3)
double(volume)
```


    
    r =
    
        2.1429
    
     
    ans =
     
    15/7
     
     
    volume =
     
    (4500*pi)/343
     
    
    ans =
    
       41.2162
    




```python
%%matlab
x = sym('x')
this = sym('this')
```


     
    x =
     
    x
     
     
    this =
     
    this
     




```python

```
