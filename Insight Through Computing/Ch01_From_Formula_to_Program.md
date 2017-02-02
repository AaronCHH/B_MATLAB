
# 1 From Formula to Program 1

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [1 From Formula to Program 1](#1-from-formula-to-program-1)
  * [1.1 Just Plug It In! 3](#11-just-plug-it-in-3)
    * [Surface Area of a Sphere](#surface-area-of-a-sphere)
    * [Matlab: Arithmetic expressions, assignment, input, output](#matlab-arithmetic-expressions-assignment-input-output)
  * [1.2 Check and Evaluate 14](#12-check-and-evaluate-14)
    * [Minimum of a Quadratic on an Interval](#minimum-of-a-quadratic-on-an-interval)
    * [Matlab: Boolean expressions, conditionals](#matlab-boolean-expressions-conditionals)

<!-- tocstop -->


## 1.1 Just Plug It In! 3

### Surface Area of a Sphere


```matlab
# %load C1/SurfArea.m
% The Script SurfArea

r = input('Enter radius r: ');
A = 4*3.1416*r^2;
fprintf('r = %10.3f A = %10.3e\n', r, A)

```


```matlab
# %load C1/Eg1_1.m
% Script Eg1_1
% Spherical Surface Area Increase

% Acquire and display the input data...
r = input('Enter radius (kilometers):');
delta_r = input('Enter increase (millimeters):');
clc
fprintf('Sphere radius   = %12.6f kilometers\n',r)
fprintf('Radius increase = %12.6f millimeters\n\n',delta_r)
disp('Surface Area Increase:')

% Convert from millimeters to meters...
dr = delta_r/10^6;

% Method 1
delta_A1 = (4*pi*(r + dr)^2 -  4*pi*r^2)*10^6;
fprintf('\n   Method 1: %15.6f square meters\n',delta_A1)

% Method 2
delta_A2 = (4*pi*(2*r + dr)*dr)*10^6;
fprintf('   Method 2: %15.6f square meters\n',delta_A2)

% Method 3
delta_A3 = (8*pi*r*dr)*10^6;
fprintf('   Method 3: %15.6f square meters\n',delta_A3)
```

### Matlab: Arithmetic expressions, assignment, input, output

## 1.2 Check and Evaluate 14

### Minimum of a Quadratic on an Interval


```matlab
# %load C1/Eg1_2.m
% Script Eg1_2
% Minimum of the quadratic x^2 + bx + c on the interval [L,R].

% Acquire and display the input data...
b = input('Enter b:');
c = input('Enter c:');
L = input('Enter L:');
R = input('Enter R (L<R):');
clc
fprintf('Quadratic: x^2 + bx + c,  b = %5.2f, c = %5.2f\n',b,c)
fprintf('Interval : [L,R], L = %5.2f, R = %5.2f\n\n',L,R)
% The critical point...
xc = -b/2;
if xc < L
    % Minimum at the left endpoint...
    fL = L^2 + b*L + c;
    fprintf('Minimizing x    = %5.2f\n',L)
    fprintf('Minimum f value = %5.2f\n',fL)
elseif L <= xc && xc <= R
    % Minimum at the critical point...
    fxc = c - (b/2)^2;
    fprintf('Minimizing x    = %5.2f\n',xc)
    fprintf('Minimum f value = %5.2f\n',fxc)
else
    % Minimum at the right endpoint...
    fR = R^2 + b*R + c;
    fprintf('Minimizing x    = %5.2f\n',R)
    fprintf('Minimum f value = %5.2f\n',fR)
end
```

### Matlab: Boolean expressions, conditionals


```matlab

```
