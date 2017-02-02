
# 15 Optimization 363
## 15.1 Shortest Route 365
### The Combinatoric Explosion


```python
# %load C15/Eg15_1.m
% Script Eg15_1
% Heuristic solution of the traveling salesperson problem.

% Get the data and set up the distance matrix...
City = Capitals;
D = CityDistTable(City);

Shortest = inf;
% Examine the route obtained for each possible starting city...
for StartCity = 1:48
    [S,Odom] = Route(StartCity,D);
    if Odom(49) < Shortest
        % A new best route discovered. Display...
        Shortest = Odom(49);
        clc
        disp('       Stop              Odometer')
        disp('---------------------------------')
        for k=1:49
            disp([City(S(k)).Name  sprintf(' %6.0f',Odom(k)) ])
        end
        pause
    end
end














```

### Matlab: More practice with arrays
## 15.2 Best Bike 372
### Constraints and Objective Functions


```python
# %load C15/Eg15_2.m
% Script Eg15_2
% Find the best bike.

% Initial guess for w(2:6)...
wTilde(2:6) = [ 22 16 15 14 13];
B = BestBike(wTilde);
its = 1;
clc
while its==1 || (diff>0 && its<=10)
    % Display the current best bike...
    fprintf('\n\n\nPedal Sprockets = [ %2d  %2d  %2d ]\n',B.p)
    fprintf('Wheel Sprockets = [ %2d  %2d  %2d  %2d  %2d  %2d  %2d ]\n',B.w)
    fprintf('wTilde(2:6)     =       %2d  %2d  %2d  %2d  %2d \n\n',wTilde(2:6))
    disp(' pedal  wheel     ratio')
    disp('-----------------------')
    for k=1:21
        fprintf('  %2d     %2d      %6.3f\n',B.G(k).i,B.G(k).j,B.G(k).r)
    end
    fprintf('\nphi = %6.3f\n',B.phiVal)

    % Revise the search space and try again...
    wTildeNew(2:6) = [B.w(2) B.w(3) B.w(4) B.w(5) B.w(6)];
    diff = max(abs(wTildeNew(2:6) - wTilde(2:6)));
    wTilde = wTildeNew;
    B = BestBike(wTilde);
    phiOld = B.phiVal;
    its = its + 1;
end

```

### Matlab: More complicated nested loops
## 15.3 Most Likely Orbit 381
### Model Building


```python
# %load C15/Eg15_3.m
% Script Eg15_3
% Fitting an ellipse to data

% Generate noisy orbit data...
NoiseFactor = .2;
P = 1; A = 6; theta = pi/6;
n = 20; t = linspace(0,2*pi,n);
x1 = (P-A)/2 + ((P+A)/2)*cos(t);   y1 = sqrt(A*P)*sin(t);
x = cos(theta)*x1 - sin(theta)*y1; y = sin(theta)*x1 + cos(theta)*y1;
x = x + NoiseFactor*randn(1,n);    y = y + NoiseFactor*randn(1,n);

% Solicit and display the first approximation...
close all; axis equal off; hold on
plot(x,y,'or',0,0,'*k')
[alpha,beta,sbar,phiValBest] = GetFocusAndString(x,y);
ShowEllipse(alpha,beta,sbar,phiValBest)

% Try to improve the fit...
nTries = 10;
for Try = 2:nTries
   [alpha,beta,stilde,phiVal] = GetFocusAndString(x,y);
   if phiVal < phiValBest
       % Redisplay if an improvement...
       phiValBest = phiVal;
       close all; axis equal off; hold on
       plot(x,y,'or',0,0,'*k')
       ShowEllipse(alpha,beta,sbar,phiValBest)
   end
end
```

### Matlab: Interactive search


```python

```
