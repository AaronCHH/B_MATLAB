
# 10 Points, Polygons, and Circles 227
## 10.1 How Far? 229
### Distance Metrics


```python
# %load C10/Eg10_1.m
% Script Eg10_1
% Generates and displays a random point set and its diameter

% Set up the figure window...
close all
figure
axis([-.2 1.2 -.2 1.2])
hold on

% Generate a random point set...
n = 100; x = rand(n,1); y = rand(n,1);
for i=1:n
    P(i) = MakePoint(x(i),y(i));
end

% Compute the diameter and display...
[Q1,Q2] = DiameterPoints(P);
plot([Q1.x Q2.x],[Q1.y Q2.y],'r')
d = GetDist(Q1,Q2);
ShowPointSet(P,'*k')
ShowPointSet([Q1 Q2],'or')
title(sprintf('Diameter = %5.3f',d),'Fontsize',14)
hold off

```

### Matlab: Simple structures
## 10.2 Fenced in Twice? 237
### Intersection


```python
# %load C10/Eg10_2.m
% Script Eg10_2
% Displays a random set of rectangles and hightlights those
%   rectangles that are isolated from all the others

% Generate n random rectangles...
n = 50;
%colors = 'rgbycm';
for i=1:n
    xc = randn(1); yc = randn(1); 
    L = .5+.5*rand(1); W = .5+.5*rand(1);
    R(i) = MakeRect(xc-L/3,xc+L/3,yc-W/3,yc+W/3);
end

% Display all the rectangles...
close all
figure
axis equal off
hold on
for i = 1:n
    ShowRect(R(i),'y')
end

% Determine and highlight the isolated rectangles..
i = ListOfDisjoints(R);
for k = 1:length(i)
    j = i(k);
    % Rectangle j is isolated...
    ShowRect(R(j),'r')
end
hold off
title(sprintf('Number of Isolated Rectangles = %1d', ...
      length(i)),'Fontsize',14)


```

### Matlab: More complicated structures, boolean-valued functions
## 10.3 Not Perfect? 244
### Nearness in Shape


```python
# %load C10/Eg10_3.m
% Script Eg10_3
% Displays a random triangle and the associate inscribed
% and circumscribed circles.

% Set up the figure window...
close all
figure
axis equal off
hold on

% Generate a random triangle and its inscribed and circumscribed
% circles...
A = MakePoint(rand(1),rand(1));
B = MakePoint(rand(1),rand(1));
C = MakePoint(rand(1),rand(1));
T = MakeTriangle(A,B,C);
[C_In,C_Out] = InAndOut(T);

% Display...
ShowCircle(C_Out,'y')
ShowTriangle(T,'k');
ShowCircle(C_In,'r')
rho = sqrt(1 - (2*C_In.r/C_Out.r)^2);
title(sprintf('rho(T) = %5.3f',rho),'Fontsize',14)
hold off
shg
```

### Matlab: Practice with structures


```python

```
