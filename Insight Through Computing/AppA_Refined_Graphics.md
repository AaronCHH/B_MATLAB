
# A Refined Graphics

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [A Refined Graphics](#a-refined-graphics)
  * [A.1 Scaling Axes](#a1-scaling-axes)
  * [A.2 Setting and Labelling Axis Ticks](#a2-setting-and-labelling-axis-ticks)
  * [A.3 Fancy Labelling](#a3-fancy-labelling)
  * [A.4 Aligning Text](#a4-aligning-text)
  * [A.5 Freezing Axis Scaling](#a5-freezing-axis-scaling)
  * [A.6 Fonts](#a6-fonts)
  * [A.7 Greek Symbols](#a7-greek-symbols)
  * [A.8 Mathematical Symbols](#a8-mathematical-symbols)
  * [A.9 Legends](#a9-legends)
  * [A.10 Marker Size](#a10-marker-size)
  * [A.11 Line Width](#a11-line-width)
  * [A.12 Window Colors](#a12-window-colors)
  * [A.13 Positioning the Figure Window](#a13-positioning-the-figure-window)

<!-- tocstop -->


## A.1 Scaling Axes


```matlab
# %load Graphics/ShowAxisStyles.m
% Script File: ShowAxisStyles
% How to scale the axes.

theta = linspace(0,2*pi);
x = cos(theta);
y = sin(theta);
close all

figure
plot(x,y)
title('Autoscaling','Fontsize',14)

figure
plot(x,y)
axis equal
title('axis equal','Fontsize',14)

figure
plot(x,y)
axis equal square
title('axis equal square','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
title('axis([-1.2 1.2 -1.2 1.2])','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
axis equal
title('axis([-1.2 1.2 -1.2 1.2]); axis equal','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
axis equal square
title('axis([-1.2 1.2 -1.2 1.2]); axis square','Fontsize',14)



```

## A.2 Setting and Labelling Axis Ticks


```matlab
# %load Graphics/ShowTicks.m
% Script File: ShowTicks
% How to set and label axis ticks.

close all
x = linspace(0,4*pi);
y = sin(x);
plot(x,y)
axis([0 4*pi -1.2 1.2])

% Define x-ticks and their labels..
set(gca,'xTick',0:pi/2:4*pi)
set(gca,'xTickLabel',{'0', ' ', 'pi', ' ', '2pi', ' ', '3pi', ' ', '4pi'},'Fontsize',14)

% Define y-ticks and let them be auto-labelled...
set(gca,'yTick',-1:.5:1)

grid on
shg
```

## A.3 Fancy Labelling


```matlab
# %load Graphics/ShowFancyLabelling.m
% Script File: ShowFancyLabelling
% How to label points with subcripted variable names.

close all
r = 1;
t = pi/6 + linspace(0,2*pi,7);
x = r*cos(t);
y = r*sin(t);
plot(x,y);

axis equal off
HA = 'HorizontalAlignment';
VA = 'VerticalAlignment';
text(x(1),y(1),'\leftarrow {\itP}_{1}',  HA,'left','FontSize',14)
text(x(2),y(2),'\downarrow',             HA,'center',VA,'baseline','FontSize',14)
text(x(2),y(2),'{\itP}_{2}',             HA,'left',VA,'bottom','FontSize',14)
text(x(3),y(3),'{\itP}_{3} \rightarrow', HA,'right','FontSize',14)
text(x(4),y(4),'{\itP}_{4} \rightarrow', HA,'right','FontSize',14)
text(x(5),y(5),'\uparrow',               HA,'center',VA,'top','FontSize',14)
text(x(5),y(5),'{\itP}_{5}  ',           HA,'right',VA,'top','FontSize',14)
text(x(6),y(6),'\leftarrow {\itP}_{6}',  HA,'left','FontSize',14)

text(0,.4*r,'A Labelled Hexagon^{1}',HA,'center','FontSize',14)
text(0,-.4*r,'^{1} A hexagon has six sides.',HA,'center','FontSize',10)
```

## A.4 Aligning Text


```matlab
# %load Graphics/ShowTextAlignment.m
% Script File: ShowTextAlignment
% How to place text relative to a coordinate point.

close all
HA = 'HorizontalAlignment';
HV = 'VerticalAlignment';

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'left','color','r', 'Fontweight','bold')
title('Left edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'right','color','r','Fontweight','bold')
title('Right edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'center','color','r','Fontweight','bold')
title('Center of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'left',HV,'top','color','r','Fontweight','bold')
title('Left top edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'right',HV,'bottom','color','r','Fontweight','bold')
title('Right bottom edge of text aligned.','Fontsize',14)

shg
```

## A.5 Freezing Axis Scaling


```matlab
# %load Graphics/ShowManual.m
% Script File: ShowManual
% How to freeze axes.

theta = linspace(0,2*pi);
c = cos(theta);
s = sin(theta);

close all

figure
plot(c,s)
axis([-1.2 1.2 -1.2 1.2])
axis equal square
x = -2 + 4*rand(500,1);
y = -2 + 4*rand(500,1);
hold on
plot(x,y,'.')
title('axes not frozen at [-1.2 1.2 -1.2 1.2]')

figure
plot(c,s)
axis([-1.2 1.2 -1.2 1.2])
axis equal square manual
x = -2 + 4*rand(500,1);
y = -2 + 4*rand(500,1);
hold on
plot(x,y,'.')
title('axes frozen at [-1.2 1.2 -1.2 1.2]')

shg


```

## A.6 Fonts


```matlab
# %load Graphics/ShowFonts.m
% Script File: ShowFonts
% How choose a font, a size, a weight, and an angle.

close all
HA = 'HorizontalAlign';

fonts = {'Times-Roman' 'Helvetica' 'AvantGarde' 'Comic Sans MS' 'Palatino'...
         'ZapfChancery' 'Courier' 'NewCenturySchlbk' 'Helvetica-Narrow'};
for k=1:length(fonts)
   figure
   axis([-20 100 -5 60])
   axis off
   hold on
   fill([-20 100 100 -20 -20],[-5  -5  60  60  -5],'w')
   plot([-20 100 100 -20 -20],[-5  -5  60  60  -5],'k','Linewidth',3)

   v=38;
   F = fonts{k};  
   text(45,55,F,'color','r','FontName',F,'FontSize',24,HA,'center')
   text(10,47,'Plain','color','b','FontName',F,'FontSize',22,HA,'center')
   text(45,47,'Bold','color','b','FontName',F,'Fontweight','bold','FontSize',22,HA,'center')
   text(82,47,'Oblique','color','b','FontName',F,'FontAngle','oblique','FontSize',22,HA,'center')
   for size=[22 18 14 12 11 10 9]
      text(-12,v,int2str(size),'FontName',F,'FontSize',size,HA,'center')
      text(10,v,'Matlab','FontName',F,'FontSize',size,HA,'center')
      text(45,v,'Matlab','FontName',F,'FontSize',size,HA,'center','FontWeight','bold')
      text(82,v,'Matlab','FontName',F,'FontSize',size,HA,'center','FontAngle','oblique')
      v = v-6;
   end
   hold off
   pause(1)
end


```

## A.7 Greek Symbols


```matlab
# %load Graphics/ShowGreek.m
% Script File: ShowGreek
% How to produce Greek letters.

close all
figure
axis off
hold on
fill([-1 12 12 -1 -1],[-1 -1 12 12 -1],'w')
plot([-1 12 12 -1 -1],[-1 -1 12 12 -1],'k','Linewidth',3)

text(3,10,'Greek Symbols','color','r','FontSize',18)
x = 0; x1 = x+.7;
y = 4; y1 = y+.7;
z = 8; z1 = z+.7;


text(x,8,'\alpha :');   text(x1,8,'\\alpha');  
text(x,7,'\beta :');    text(x1,7,'\\beta');
text(x,6,'\gamma :');   text(x1,6,'\\gamma')
text(x,5,'\delta :');   text(x1,5,'\\delta')
text(x,4,'\epsilon :'); text(x1,4,'\\epsilon')
text(x,3,'\kappa :');   text(x1,3,'\\kappa')
text(x,2,'\lambda :');  text(x1,2,'\\lambda')
text(x,1,'\mu :');      text(x1,1,'\\mu')
text(x,0,'\nu :');      text(x1,0,'\\nu')

text(y,8,'\omega :');   text(y1,8,'\\omega')
text(y,7,'\phi :');     text(y1,7,'\\phi')
text(y,6,'\pi :');      text(y1,6,'\\pi')
text(y,5,'\chi :');     text(y1,5,'\\chi')
text(y,4,'\psi :');     text(y1,4,'\\psi')
text(y,3,'\rho :');     text(y1,3,'\\rho')
text(y,2,'\sigma :');   text(y1,2,'\\sigma')
text(y,1,'\tau :');     text(y1,1,'\\tau')
text(y,0,'\upsilon :'); text(y1,0,'\\upsilon')


text(z,8,'\Sigma :');   text(z1,8,'\\Sigma')
text(z,7,'\Pi :');      text(z1,7,'\\Pi')
text(z,6,'\Lambda :');  text(z1,6,'\\Lambda')
text(z,5,'\Omega :');   text(z1,5,'\\Omega')
text(z,4,'\Gamma :');   text(z1,4,'\\Gamma')

shg








```

## A.8 Mathematical Symbols


```matlab
# %load Graphics/ShowMathSymbols.m
% Script File: ShowMathSymbols
% How to produce math symbols.

close all
figure
axis off
hold on
fill([0 12 12 0 0],[0 0 12 12 0],'w')
plot([0 12 12 0 0],[0 0 12 12 0],'k','Linewidth',3)
hold off
text(6,10.5,'Math Symbols','color','r','FontSize',18,'HorizontalAlign','center')
x = 1; x1 = x+.7;
y = 4.6; y1 = y+.7;
z = 9; z1 = z+.7;
n = 12;

text(y,9,'\leftarrow :');       text(y1,9,'\\leftarrow')
text(y,8,'\rightarrow :');      text(y1,8,'\\rightarrow')
text(y,7,'\uparrow :');         text(y1,7,'\\uparrow')
text(y,6,'\downarrow :');       text(y1,6,'\\downarrow')
text(y,5,'\Leftarrow :');       text(y1,5,'\\Leftarrow')
text(y,4,'\Rightarrow :');      text(y1,4,'\\Rightarrow')
text(y,3,'\Leftrightarrow :');  text(y1,3,'\\Leftrightarrow')
text(y,2,'\partial :');         text(y1,2,'\\partial')

text(x,9,'\neq :');             text(x1,9,'\\neq')
text(x,8,'\geq :');             text(x1,8,'\\geq')
text(x,7,'\approx : ');         text(x1,7,'\\approx')
text(x,6,'\equiv :');           text(x1,6,'\\equiv')
text(x,5,'\cong :');            text(x1,5,'\\cong')
text(x,4,'\pm :');              text(x1,4,'\\pm')
text(x,3,'\nabla :');           text(x1,3,'\\nabla')
text(x,2,'\angle :');           text(x1,2,'\\angle')

text(z,9,'\in :');              text(z1,9,'\\in')
text(z,8,'\subset :');          text(z1,8,'\\subset')
text(z,7,'\cup :');             text(z1,7,'\\cup')
text(z,6,'\cap :');             text(z1,6,'\\cap')
text(z,5,'\perp :');            text(z1,5,'\\perp')
text(z,4,'\infty :');           text(z1,4,'\\infty')
text(z,3,'\int :');             text(z1,3,'\\int')
text(z,2,'\times :');           text(z1,2,'\\times')

shg









```

## A.9 Legends


```matlab
# %load Graphics/ShowLegend.m
% Script File: ShowLegend
% How to position a legend.

loc = { 'North' , 'South' , 'East' , 'West' ,...             
        'NorthEast' , 'NorthWest' , 'SouthEast' , 'SouthWest'  ,...       
        'NorthOutside' , 'SouthOutside' , 'EastOutside' , 'WestOutside' ,...       
        'NorthEastOutside' , 'NorthWestOutside' , 'SouthEastOutside' ,...  
        'SouthWestOutside' , 'Best' , 'BestOutside'  };

close all
t = linspace(0,2);
axis([0 2 -1.5 1.5])
y1 = sin(t*pi);
y2 = cos(t*pi);
plot(t,y1,t,y2,'--',[0 .5 1 1.5 2],[0 0 0 0 0],'o')
set(gca,'XTick',[])
set(gca,'YTick',[0])
grid on
for k=1:length(loc)
    legend('sin(\pi t)','cos(\pi t)','roots','location',loc{k})
    title('                            ')
    title(loc{k},'FontSize',14)
    pause
end

```

## A.10 Marker Size


```matlab
# %load Graphics/ShowMarkerSize.m
% Script File: ShowMarkerSize
% How to draw markers with specified size.

close all
figure
axis off
hold on
fill([0 10 10 0 0],[-77 -77 42 42 -77],'w')
plot([0 10 10 0 0],[-77 -77 42 42 -77],'k','Linewidth',3)
text(5,30,'Markersize','color','r','FontSize',18,'HorizontalAlign','center')
del = 6;
for mSize=0:15
    if mSize>0
        plot(4,22-del*mSize,'.k','Markersize',mSize);
        plot(5,22-del*mSize,'*k','Markersize',mSize);
        plot(6,22-del*mSize,'ok','Markersize',mSize);
        plot(7,22-del*mSize,'xk','Markersize',mSize);
        plot(8,22-del*mSize,'hk','Markersize',mSize);
        text(1,22-del*mSize,sprintf('%3d',mSize),'FontSize',14)
    else
        plot(4,22,'.k');
        plot(5,22,'*k');
        plot(6,22,'ok');
        plot(7,22,'xk');
        plot(8,22,'hk');
        text(1,22,'default')
    end
end
hold off
set(gcf,'position',[50 50 800 800])


```

## A.11 Line Width


```matlab
# %load Graphics/ShowLineWidth.m
% Script File: ShowLineWidth
% How to draw lines with specified width.

close all
figure
axis off
hold on
fill([0 14 14 0 0],[0 0 14 14 0],'w')
plot([0 14 14 0 0],[0 0 14 14 0],'k','Linewidth',3)
text(7,13,'LineWidth','color','r','FontSize',18,'HorizontalAlign','center')
for width=0:10
    if width>0
        plot([3 12],[11-width 11-width],'k','Linewidth',width);
        text(1,11-width,sprintf('%3d',width),'FontSize',14)
    else
        plot([3 12],[11-width 11-width],'k');
        text(1,11-width,'default','FontSize',14)
    end
end
hold off


```

## A.12 Window Colors


```matlab
# %load Graphics/ShowWindowColor.m
% Script File: ShowWindowColor
% How to color the plot and figure windows.

close all
figure

% Plot the sine function...
hold on
x = linspace(0,1);
plot(x,sin(2*pi*x),'k','linewidth',2)
hold on
plot([0  1],[0 0],'k')
axis([0 1,-1.2 1.2])
grid on

% Set the plot window color to be magenta...
set(gca,'color',[1 0 1])
% Set the figure color to be black...
set(gcf,'color',[0 0 0])
% Draw the axis labelings in white...
set(gca,'xcolor',[1 1 1], 'ycolor',[1 1 1],'fontsize',14)
```

## A.13 Positioning the Figure Window


```matlab
# %load Graphics/ShowPosition.m
% Script File: ShowPosition
% How to position the current figure window.
%
% Syntax:  set(gcf,'position',[a b L W])
%
%        (a,b) = is the lower left corner
%          L   = the horizontal length of the window
%          W   = the vertical width of the window
%
% Different screens have different dimensions.
% A window that fits on one screen may not fit on another.



% Vary the lower left corner...
close
figure
shg
L = 600;
W = 400;
for a = 50:100:350
    for b = 50:50:200
        set(gcf,'position',[a b L W])
        title(sprintf('[ a , b , L , W ]  =  [%1d , %1d , %1d , %1d]',a,b,L,W),'Fontsize',14)
        text(.3,.5,'Vary Lower Left Corner (a,b)','Fontsize',14)
        pause
    end
end

% Vary the length and width of the figure...
close
figure
shg
a = 100;
b = 100;
for L = 500:100:900
    for W = 100:100:500
        set(gcf,'position',[a b L W])
        title(sprintf('[ a , b , L , W ]  =  [%1d , %1d , %1d , %1d]',a,b,L,W),'Fontsize',14)
        text(.3,.5,'Vary Length and Width','Fontsize',14)
        pause
    end
end


```


```matlab

```
