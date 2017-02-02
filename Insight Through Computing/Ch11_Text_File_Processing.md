
# 11 Text File Processing 255
## 11.1 Latitude and Daylight 257
### Data Acquisition and Conversion


```python
# %load C11/Eg11_1.m
% Script Eg11_1
% Examines the accuracy of the simple daylight-predictor model.
% Assumes that InsightData is a subdirectory of the working directory.

% Data is available for these cities..
Cities =  {'Anaheim',  'Anchorage', 'Arlington', 'Athens', 'Atlanta',...
    'Baltimore','Bangkok', 'Beijing', 'Berlin', 'Bogata', ...
    'Boston', 'BuenosAires', 'Cairo', 'Chicago', 'Cincinnati', ...
    'Cleveland', 'Denver', 'Detroit',   'Honolulu',  'Houston', ...
    'Ithaca', 'Johannesburg', 'KansasCity', 'Lagos', 'London', ...
    'LosAngeles', 'MexicoCity', 'Miami', 'Milwaukee', 'Minneapolis',...
    'Moscow',     'NewDelhi',     'NewYork', 'Oakland', 'Paris',...
    'Philadelphia', 'Phoenix', 'Pittsburgh', 'RiodeJaneiro', 'Rome',...
    'SanFrancisco', 'Seattle', 'Seoul', 'Sydney', 'Tampa',...
    'Teheran',  'Tokyo',  'Toronto', 'Washington', 'Wellington'};

% Choose a subset of the city indices 1 through 50 to investigate...
CityChoices = [4 21 25 33 50];
for k = CityChoices
    % The sunrise/sunset data for city k...
    fn = [ pwd '\InsightData\11_1\' Cities{k}  '.dat'];
    % Get the actual and predicted daylight values and display...
    [Name,Lat,Long,Hours] = GetRiseSetData(fn);
    HoursEst = Daylight(Lat);
    err = ceil(max(Hours-HoursEst)*60);
    Days = (1:365)';
    %    Display...
    plot(Days,Hours,'k',Days,HoursEst,'r')
    legend('Actual','Model')
    title([Name sprintf('  Latitude = %4.1f   Max Error = %1d minutes',...
                        Lat,err)])
    ylabel('Hours of Sunlight')
    axis([0 365 4 20 ]);
    set(gca,'Xtick',[31 59 90 120 151 181 212 243 273 304 334],...
            'XTickLabel',[]);
    grid on
    z = 3.5;
    text(7,z,'Jan');   text(37,z,'Feb');  text(67,z,'Mar')
    text(97,z,'Apr');  text(127,z,'May'); text(157,z,'Jun')
    text(187,z,'Jul'); text(217,z,'Aug'); text(253,z,'Sep')
    text(283,z,'Oct'); text(313,z,'Nov'); text(343,z,'Dec')
    shg
    pause(1)
end
```

### Matlab: Reading data from a text file
## 11.2 Nearby Millions 268
### Writing and Representation


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

## Matlab: Creating .dat and .bin files


```python

```
