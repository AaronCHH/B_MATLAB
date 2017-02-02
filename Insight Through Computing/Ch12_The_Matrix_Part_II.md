
# 12 The Matrix: Part II 283
## 12.1 Saving Private Rainbows 285
### Linear Interpolation and Color Mapping


```python
# %load C12/Eg12_1.m
% Script Eg12_1
% Illustrates MakeColorMap
  
close all
% The endpoint colors...
B = [0 0 0; ... 
     1 0 0; ...
     1 1 0; ...
     0 1 0; ...
     0 1 1; ...
     0 0 1; ...
     1 0 1; ...
     1 0 0; ...
     0 0 0];

 % The in-between color counts...
q = [1 9 7 8 12 8 9 1];

% Generate and display the color map...
C = MakeColorMap(B,q);
ShowColorMap(C)
```

### Matlab: row-by-row matrix setup
## 12.2 Known on the Corner 292
### Bilinear Interpolation and Shading


```python
# %load C11/Eg11_2.m
% Script Eg11_2
% Environment for examining the population density factor.

% Acquire the data. 
MakePXYZ();     
MakePXYZBmat() 
[P,x,y,z] = GetPXYZBmat();

close all
% The distance that defines "nearby":
Rho = 300;

% The number of trials...
nTries = 5;
for k=1:nTries
    figure

    % Enter the Q-point and compute its xyz values...
    [Lat0,Long0] = USAClick();
    [x0,y0,z0] = EarthCartesian(Lat0,Long0);

    % Compute the vector of great circle distances to the zipcode areas...
    d = 7926*asin(sqrt((x-x0).^2 + (y-y0).^2 + (z-z0).^2)/2);

    % Determine the indices associated with the ``nearby'' zipcodes...
    i_Rho = find(d<=Rho);

    % Sum the associated populations and display...
    NearbyPop = sum(P(i_Rho))/10^6;
    title(sprintf(...
      'Lat = %5.2f  Long = %5.2f  Rho = %3d  NearbyPop = %5.2f million',...
      Lat0,Long0,Rho,NearbyPop),'Fontsize',14)
    pause(1)
end




```

### Matlab: from f(x, y) to F(i,j)
## 12.3 Seven-by-Five 299
### Image Digitization


```python
# %load C12/Eg12_3.m
% Script Eg12_3
% Environment for designing 14-by-10 dot matrix representations of the
% ten digits.

close all
% Get the 7-by-5 representations...
SevenByFive = TheDigits();

% Improve the 14-by-10's...
FourteenByTen = cell(10,1);
for k=1:3
    figure
    set(gcf,'position',[20,20,800,600])
    axis equal off
    hold on
    %    Design and  save the k-th digit...
    FourteenByTen{k} = Refine(SevenByFive{k});
    close
end

% Display the 7-by-5's and 14-by-10's side-by-side...
figure
axis([1 11 -1.3 1.3])
set(gcf,'position',[20,20,800,600])
axis equal off
hold on
for k=1:10
    DrawDigit(k,1,1,SevenByFive{k},0)
    DrawDigit(k,-1.3,1,FourteenByTen{k},0)
end
```

### Matlab: Cell arrays of matrices
## 12.4 Picture This 306
### Working with Image Data Files


```python
# %load C12/Eg12_4.m
% Script Eg12_4
% Illustrates median filtering and edge detection.
close all
% Acquire and show the original color image...
A = imread([pwd '\InsightData\12_4\Cornell_Clock.jpg'],'jpg');
imshow(A)

% Turn into black-and-white, display, and save...
B = rgb2gray(A);
figure; imshow(B)
imwrite(B,[pwd '\MyData\Cornell_Clock_Gray.jpg'],'jpg')

% Extract a portion of the black-and-white image, add some noise,
% and observe the effect of median filtering...
figure
C = B(850:1150,2350:2650);
for k=1:200
    i = floor(1+rand(1)*299); j = floor(1+rand(1)*299);
    C(i:i+1,j:j+1) = floor(10*rand(2,2));
end
imshow(C)

figure
D = MedianFilter(C);
imshow(D)

% Find and display the edges in the black-and-white image...
figure
jpegIn  = [pwd '\InsightData\12_4\Cornell_Clock.jpg'];
jpegOut = [pwd '\MyData\Cornell_Clock_Edges.jpg'];
for tau = 30:10:50
    Edges(jpegIn,jpegOut,tau);
    imshow(imread(jpegOut))
    title(sprintf('Tau = %2d',tau),'Fontsize',14)
    pause
end
```

### Matlab: imread, imwrite, more practice with matrices


```python

```
