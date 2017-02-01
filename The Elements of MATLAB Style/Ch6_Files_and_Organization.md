# 6. Files and Organization
> The organization of code and data files in directories can have a significant impact on ease of use.  
Separate project-specific and general-purpose m-files to make them easier to use and to integrate with the MATLAB product.  


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [6. Files and Organization](#6-files-and-organization)
  * [Toolboxes](#toolboxes)
    * [284. Organize General-Purpose m-Files in Toolboxes](#284-organize-general-purpose-m-files-in-toolboxes)
    * [285. Put Test Files in a Separate Directory](#285-put-test-files-in-a-separate-directory)
    * [286. Consider Writing Demo Files](#286-consider-writing-demo-files)
    * [287. Use a Consistent Toolbox Folder Organization](#287-use-a-consistent-toolbox-folder-organization)
    * [288. Provide for Integration with MATLAB](#288-provide-for-integration-with-matlab)
    * [289. Provide a Reference Page for Every Public Function](#289-provide-a-reference-page-for-every-public-function)
    * [290. Integrate the Reference Pages with the Help Browser](#290-integrate-the-reference-pages-with-the-help-browser)
    * [291. Do not Make Your Toolbox a Subfolder of the MATLAB Folder](#291-do-not-make-your-toolbox-a-subfolder-of-the-matlab-folder)
  * [Project Files](#project-files)
    * [292. Organize Your Project-Specific Files by Project Directory](#292-organize-your-project-specific-files-by-project-directory)
    * [293. Organize Your Data Directory for Ease of Access](#293-organize-your-data-directory-for-ease-of-access)
  * [Organization Summary](#organization-summary)

<!-- tocstop -->


## Toolboxes
### 284. Organize General-Purpose m-Files in Toolboxes
Develop general-purpose program libraries or toolboxes to increase productivity.  
A library is particularly helpful for related functions, such as statistics or time series analysis, that are useful in more than one application domain.  

Write your toolboxes for sharing.  
Standards are higher for public toolboxes that you share with others than for personal toolboxes for your own use.  
Improve the quality of your code by having others use and criticize it.  
A public toolbox should be usable by nonexperts and customizable and extensible by experts.  

### 285. Put Test Files in a Separate Directory
In general, do not release test files in a production code toolbox directory.  
Putting the test files in their own directory makes the release separation easier.  
Using separate directories helps avoid any dependence of the production code on the test code.  

### 286. Consider Writing Demo Files
Demo files provide the user with quick examples of the capa bilities and uses of the functions in a toolbox.  
Demos often use graphical user interfaces (GUIs) or are graphics based, and they allow the user to see results without extensive program ming.  

Some users find it easier to learn how to work with a function or class by studying examples rather than syntax descriptions.  
Demo files provide an opportunity to show extended examples that would not fit in the comment-based documentation of a code module.  
The demo file directory is also a good place for published documentation files.  

### 287. Use a Consistent Toolbox Folder Organization
Toolboxes from The MathWorks follow varying folder organi zations.  
The most recent approach seems to be that a toolbox for audio processing would be in a directory named some thing like audio with subdirectories audio, audiodemos, and audiogui.  

The audiodemo subdirectory contains demo scripts, data files, a demo.xml file, possibly private subdirectories, and an HTML subdirectory for published results.  
The demo.xml file supports integration with the Help system.  
The audio sub directory contains the toolbox m-files, a Contents m-file, an info.xml file, and possibly some private subdirectories.  
The info.xml file supports integration with the Help system.  

Naming the m-file subdirectory the same as the toolbox direc tory (audio) is confusing; it is better to use a different name such as functions, programs, or tools.  

### 288. Provide for Integration with MATLAB
Add the toolbox locations to the MATLAB path so that they are easy to use.  
Also add the function, demo, and GUI subdi rectories to the MATLAB path.  
Pay attention to the order of directories on the path to avoid surprises caused by function name shadowing.  

### 289. Provide a Reference Page for Every Public Function
Use the Publish feature to produce documentation of the function from its m-file.  
Having the reference information source and the code in the same file makes it easier to keep the two consistent.  
Make your HTML reference page look like the standard reference pages in the Help browser.  

### 290. Integrate the Reference Pages with the Help Browser
Build a search database for your reference pages.  
Put an info.xml file that points to your reference pages in the tool box function folder so that it is on the MATLAB path.  
Even simple functions benefit from search access through the Help browser.  

### 291. Do not Make Your Toolbox a Subfolder of the MATLAB Folder
The MathWorks recommends that you do not make your toolbox a subfolder of the MATLAB folder.  
This will help avoid problems when you add to your MATLAB installation or install a new release.  

This also means that you should put your toolbox reference or Help folder under your toolbox folder rather than under the MATLAB Help folder.  

## Project Files

### 292. Organize Your Project-Specific Files by Project Directory
In general, avoid using the default MATLAB work directory for anything except temporary work.  
This directory may be lost and will be off the default path when the MATLAB product is upgraded.  

### 293. Organize Your Data Directory for Ease of Access
A data file will usually be written only once, but it may be read multiple times.  
Group data files and organize them in directories so that they are easy to find and read automatically.  
For projects with small amounts of data, it can be convenient to place data and MATLAB m-files in a single directory.  
For example, the directory ___analyze_gear___ might contain  
```matlab  
foo.m  
blatz.m  
wheel.mat  
strut.mat  
```  
For projects with large amounts of data, use program and data subdirectories to simplify directory listings and ease backup policies.  
For example, the directory  
___analyze_gear___  
might contain the subdirectory  
___programs___  
containing  
```matlab  
foo.m  
blatz.m  
```  
and the subdirectory  
___data___  
containing  
```matlab  
wheel_101.mat  
wheel_102.mat  
strut_101.mat  
strut_102.mat  
```  
For projects with very large amounts of data, use multiple data subdirectories.  
In addition to easing backup, this organization also supports simple automated data file access.  
For example, the directory  
___analyze_gear___  
might contain the subdirectory  
___programs___  
containing  
```matlab  
foo.m  
blatz.m  
```  
and the subdirectory  
___data___  
containing subdirectories  
___plane_101___
___plane_102___  
each containing  
```matlab  
wheel.mat  
strut.mat  
```  

## Organization Summary
> __Organize your code and data files in directories in a way that supports easy use and development.__  
It is usually best to avoid placing your code in the standard MATLAB tree or in the default MATLAB working directory.  

> __Use separate directories for each project and for your general purpose files.__  
Put your production m-files and their test files in separate directories.  
Put your production m-files and their reference page files in separate directories.
Integrate your ref erence pages with the Help browser.    
