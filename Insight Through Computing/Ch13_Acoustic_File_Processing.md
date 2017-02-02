
# 13 Acoustic File Processing 319
## 13.1 The Clock Strikes 321
### Acquisition and Playback


```python
# %load C13/Eg13_1.m
% Script Eg13_1
% Creates sound files for each of the twelve clock strikes using the
% data in BigBen.wav. 

close all
% Read in the 1 O'clock sound file...
fname = [pwd '\InsightData\13_1\BigBen.wav'];
[OneOclock,rate] = wavread(fname);
n = length(OneOclock);

% Display the wave form and click in between the Chimes portion and
% the gong portion...
plot(OneOclock)
title('Click at the beginning of the gong.')
[m,y] = ginput(1);
m = round(m);
Chimes = OneOclock(1:m);
Gong = OneOclock(m+1:n);

% For each hourly strike, create a .wav file.
% Name them BigBen1, BigBen2,...,BigBen12.
F = Chimes;
for k=1:12
    F = [F; Gong];
    fname = [pwd '\MyData\BigBen' num2str(k) '.wav'];
    wavwrite(F,rate,8,fname)
end

% Play back a chosen subset of the soundtracks...
PlayList = [2 3];
for k = PlayList
     fname = [pwd '\MyData\BigBen' num2str(k) '.wav'];
    [Oclock,rate] = wavread(fname);
    sound(Oclock)
end
```

### Matlab: wavread, sound, wavwrite
## 13.2 Dial N for Noise 326
### Frequency and Sampling


```python
# %load C13/Eg13_2.m
% Script Eg13_2
% Examines the Touch-tone system in the presence of noise.

for Trial = 1:10
    close all
    % Choose a button at random...
    i = ceil(rand*4); 
    j = ceil(rand*3); 
    % Generate and the tone...
    [tVals,y] = MakeShowPlay(i,j);
    % "Send" a noisy version...
    y = SendNoisy(tVals,y);
    % "Receive" and decipher...
    ShowCosines(y)
    pause(2)
end




```

### Matlab: More practice with vectors
