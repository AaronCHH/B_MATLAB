
# 7 The Second Dimension 155
## 7.1 From Here to There 157
### Transition Matrices


```python
# %load C7/Eg7_1.m
% Script Eg7_1
% Illustrates the function Transition.

% Set up the transition probability matrix and initialize
% the state vector....
P = [ .32   .17   .11    .46 ;...
      .18   .43   .32    .33 ;...
      .27   .22   .39    .14 ;...
      .23   .18   .18    .07 ];
x = 1000000*ones(4,1);
% Simulate 5 time steps and display...
clc
disp('     x(1)      x(2)       x(3)       x(4)   ')
disp('--------------------------------------------')
disp(sprintf(' %8.0f  ',x))
for t = 1:5
    x = Transition(P,x);
    disp(sprintf(' %8.0f  ',x))
end
```

### Matlab: Two-dimensional arrays
## 7.2 Contours and Cross Sections 166
### Visualizing F(x, y)


```python
# %load C7/Eg7_2.m
% Script Eg7_2
% Contour plot and cross sections of a function of two variables.

% Generate a matrix of f(x,y) evaluations...
a = 0; b = 6; n = 301; x = linspace(a,b,n);
c = 0; d = 4; m = 201; y = linspace(c,d,m);
TVals = fOnGrid(x,y,@T_plate);
% Display the contour plot
close all
v = linspace(5,100,20);
contour(x,y,TVals,v)

% Display selected crosssections
figure
TY = fOnGrid(x,[1 2 3],@T_plate);
plot(x,TY(1,:),x,TY(2,:),'--',x,TY(3,:),'-.')
xlabel('x','Fontsize',14)
ylabel('Temperature','Fontsize',14)
legend('y = 1', 'y = 2', 'y = 3')
shg
```

### Matlab: Contour plotting
## 7.3 Cool It! 171
### Simulation on a Grid


```python
# %load C7/Eg7_3.m
% Script Eg7_3
% Simulates the cooling of a plate whose boundary temperature
% is fixed at zero.

% Establish the Initial Temperature Distribution...
a = 0; b = 6; n = 61; x = linspace(a,b,n);
c = 0; d = 4; m = 41; y = linspace(c,d,m);
TVals = fOnGrid(x,y,@T_plate);
TVals(1,:) = zeros(1,n); TVals(m,:) = zeros(1,n);
TVals(:,1) = zeros(m,1); TVals(:,n) = zeros(m,1);
nSteps = 200;
close all
figure
colormap('hot')
for tau=0:nSteps
    % Display the current temperature distribution...
    pcolor(TVals)
    shading interp
    caxis('manual')
    title(sprintf('tau = %1d',tau),'Fontsize',14)
    axis equal off
    pause(.1)
    shg
    % Update the temperature distribution...
    TVals = Average(TVals);
end


```

### Matlab: A(i,j) updating


```python

```
