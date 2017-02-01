# 7. Development

> MATLAB now has the capability for serious projects, not just casual prototyping.  
As projects get bigger and team size grows, explicit and consistent development practices become more important.  
MATLAB is used with a range of recognized development practices from traditional to more recent agile approaches.  
This chapter presents techniques and strategies that are generally applicable to most of these practices.  
It also includes some items that are agile-specific.  

> Traditional approaches tend to have formal documented specifications and detailed design up front, with code documentation and testing near the end of the process.  
Agile approaches promote writing code and tests early, refactoring often to produce design, and placing less emphasis on formal documentation.  

> The goal of any development is software that works, usually including properties such as stability, correctness, extensibility, and maintainability.  
All serious development approaches include elements such as design, documentation, and test.  
The project deliverables are code (main and test) and documentation (of software, process, and evaluation).  

> Most software projects are constrained by developer time.  
Use practices that make the best use of your limited time and are effective in your work environment.  
Despite schedule pressures, make time to learn about important elements of the language, features of the development environment, and best practices.  


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->


* [7. Development](#7-development)
  * [Design](#design)
    * [294. Expect Change](#294-expect-change)
    * [295. Include Appropriate Flexibility](#295-include-appropriate-flexibility)
    * [296. Use the Right Algorithm](#296-use-the-right-algorithm)
    * [297. Program by Contract](#297-program-by-contract)
    * [298. Write for Automation](#298-write-for-automation)
    * [299. Make Associated Data Easy to Use](#299-make-associated-data-easy-to-use)
    * [300. Recompute When Data Changes](#300-recompute-when-data-changes)
    * [301. Leave Code Optimization for Last or Never](#301-leave-code-optimization-for-last-or-never)
    * [302. Consider Coding Standards](#302-consider-coding-standards)
  * [Development Practices](#development-practices)
    * [303. Develop in Small Steps](#303-develop-in-small-steps)
    * [304. Develop in the Editor](#304-develop-in-the-editor)
    * [305. Use Version Control](#305-use-version-control)
    * [306. Run Tests Often](#306-run-tests-often)
    * [307. Run all Tests Before Release](#307-run-all-tests-before-release)
  * [MATLAB IDE Tools](#matlab-ide-tools)
    * [308. Try the MATLAB Editor](#308-try-the-matlab-editor)
    * [309. Use Smart Indent](#309-use-smart-indent)
    * [310. Use Find and Replace](#310-use-find-and-replace)
    * [311. Pay Attention to M-Lint](#311-pay-attention-to-m-lint)
    * [312. Use Consistent Preference Settings](#312-use-consistent-preference-settings)
    * [313. Use the Debugger Effectively](#313-use-the-debugger-effectively)
    * [314. Use the TODO/FIXME Report](#314-use-the-todofixme-report)
    * [315. Use the Profiler](#315-use-the-profiler)
    * [316. Use the Dependency Report](#316-use-the-dependency-report)
    * [317. Publish During Development](#317-publish-during-development)
    * [318. Find a Desktop Layout That Works for You](#318-find-a-desktop-layout-that-works-for-you)
  * [Development Summary](#development-summary)

<!-- tocstop -->


## Design
Software design should start with two deceptively simple questions.  
What is the purpose of the software? Who will be the users? The purpose of a software project is usually to provide benefits to users.  
These benefits should be expressible as features.  
A major part of software design is decomposing these features into functionality.  
The users may be other software developers, but more often they are people with less software knowledge.  
The priority for most users is a trouble-free means to use the code rather than a long list of features.  

### 294. Expect Change
Requirements are often incomplete and can change with little warning.  
Usage changes.  
Technical software, perhaps more than other types, will be used for new and different tasks.  
Expect changes.  

You can plan for change by writing code to a consistent style and maintaining a thorough test suite.  
You can also adapt to incomplete and changing requirements by providing early prototypes to the users.  

### 295. Include Appropriate Flexibility
Too little flexibility in your code can lead to a lot of work in the future.  
Too much can lead to a lot of work now.  
Your experience will guide you toward the right amount of flexibility.  

Code that will be part of a toolbox or shared with others should typically be more flexible than code with a short lifetime and for your own use.  
The inputParser object is a good example of flexible code.  
It is used by many people to work in many different functions.  
The inputParser only does two things, but it is flexible enough to work with a variety of input argument lists.  

### 296. Use the Right Algorithm
Scalability and fast performance come not so much from code optimization as from design and selection of the right algorithm.  
Appropriate algorithms and even tested code are available for many tasks.  
Do not waste time coding the wrong algorithm.  

### 297. Program by Contract
Design module interfaces to pre and post conditions to support thoughtful development and verification.  
When modifying code, try to extend it (maintain interfaces and functionality) rather than making a change that can cause problems with other routines.   

### 298. Write for Automation
Avoid keyboard, input, and pause commands when possible.  
Use a parameter file instead.  
This approach is particularly important for automated test and data analysis.  

### 299. Make Associated Data Easy to Use
Carefully consider what data belong together based on what will be done with them.  
Often the organization of the data will indicate the best way to organize the code.  
Typically, data that go together should be placed in a structure or object.  
A structure can be better than an object if the object would be only a data container that has no behavior.  

### 300. Recompute When Data Changes
When input data changes, try to recompute all results rather than doing a partial update.
This practice will help reduce inconsistencies in dependent variable values.
If the data and theresults are in a single object or a structure, any method or function that changes the data should probably recompute the results.  

### 301. Leave Code Optimization for Last or Never
Optimization for speed or memory usage tends to make code more cryptic and may not be needed.  
Also, defining the optimization technique, implementing it, and testing it all take development time.  

### 302. Consider Coding Standards
Coding standards specify common elements for the code that make it easier to share and use code and easier to understand the ideas expressed in the code.  
They are programming rules that reduce the likelihood of introducing errors into the pro grams.  
They go beyond style guidelines to address topics such as use and behavior.  
Examples include specific variable names, input and output formats, and processing algorithms.  
Use of coding standards can  
* Increase product reliability, code portability, ease of maintenance, and usage lifetime.  
* Increase programmer productivity through reducing the learning curve for a language.  
* Increase team productivity by facilitating communication.  
* Reduce development and support costs.  
* Streamline code reviews.  
* Increase the ease with which certification is obtained.  

## Development Practices
Modern development approaches rely on incremental iteration for most projects.  
Because MATLAB is largely an interpreted language, it is very appropriate for this type of approach.  
Using the MATLAB integrated development environment tools with consistent code refinement will ease the development of quality code.  

### 303. Develop in Small Steps
Build confidence in the code incrementally.  
It is more likely that you can write a few lines of code at a time without error than many lines.  
Finding the bug in a few lines of code is much easier than finding it in a large number of lines.  

Automate as many development steps as you can.  
Change code in small steps and test it promptly, particularly when refactoring.  
Check code into version control early and often.  

### 304. Develop in the Editor
Write code in the Editor rather than in the Command Window.  
It will likely be better structured, have better style, and still be easy to execute incrementally during development.  

### 305. Use Version Control
Version control is the best way to manage and document code changes.  
It is helpful for solo development and almost essential for team development.  
Use a version control application that is appropriate for your development environment.  
MATLAB currently supports direct integration with only a few source control applications.  
You may need to find a third-party inter face or use a manual process.  

### 306. Run Tests Often
Test the production code that you write as you write it.  
This testing is the first instance of use of the code.  
It provides quick feedback on code quality and the effect of changes.  
Automate all testing as much as possible so that it is easy and quick to run.  

### 307. Run all Tests Before Release
Code that is tested only in development environments may fail after release.  
Run all tests in a prerelease environment to be sure that the code in the release is complete, consistent, and runs correctly in the target environment.  

## MATLAB IDE Tools
Use the MATLAB integrated development environment features.  
These tools can improve code, enforce consistency, and shorten development time.  

### 308. Try the MATLAB Editor
The MATLAB Editor has many features that will help you apply these guidelines and write better code.  
It provides color syntax highlighting, selective code execution, automatic indentation, and parenthesis matching.  
The M-Lint feature helps improve code quality by providing prompt feedback on errors and questionable usage.  
The Editor includes debugging features for efficient trouble shooting.  
In addition to selective code execution, the cell feature also helps clarify blocks of code and support publishing.  

Most developers will use the MATLAB Editor.  
If you prefer a different editor, use one that at least supports color coding, automated indenting, selective execution, and search and replace.  
You will probably open the code in the MATLAB Editor at some point to use its additional features.  
Set your editor preferences so that the code looks the same in both editors.  

### 309. Use Smart Indent
The Editor automatically provides indentation for loops and selection constructs while you type.  
If you write code statements out of order because of insertion or modification, then they can lack proper indentation.  
The Smart Indent feature can quickly adjust code layout to provide consistent indenting.  

### 310. Use Find and Replace
If you change a variable name, then use the editor Find and Replace feature.  
Do not expect that you will always be successful in making changes by just scanning the code.  
It is difficult to manually find all instances of the old name and spell the new name correctly.  
Similarly, you can use the Search Across Files feature to find occurrences of a name to change in multiple files.  

### 311. Pay Attention to M-Lint
The MATLAB product does not include a code checking tool that enforces coding or style standards.  
It does provide M-Lint, an Editor tool that is primarily intended to point out coding errors.  
M-Lint also provides some warning messages that relate to style standards and best practices.  

Heed the M-Lint error and warning messages as you write.  
Catch errors and poor usage quickly, and improve the code.  
Some of the warning messages can actually reveal errors.  
The Message   
```matlab  
The value assigned here to variable 'readOne' might be unused.  
```  
can be caused by an inconsistently spelled variable name.  

### 312. Use Consistent Preference Settings
Establish standard editor settings for tab and indent size, right hand text limit line, and comment formatting.  
If you develop in a group, then try to agree on these settings so that you can more easily scan each other’s code.  

### 313. Use the Debugger Effectively
Many users new to MATLAB or to debugging rely on basic practices such as semicolon removal, or simple functions such as display or fprintf.  
This strategy can be effective, but using the Debugger is often more efficient.  

You should change one of the default Debugger settings to make better use of the Editor integration.  
Turn on “Always stop if error” when debugging functions.  
With this menu selection, the Editor opens the file when an error occurs and puts a cursor close to the problem site.  

There are two features of Debugger operation that may be unexpected.  
It stacks up debug conditions so you may have to exit the debug mode or continue several times to return to the non-debug mode.  
Also the “Exit debug” menu selection or command sometimes turns off the “Always stop if error” setting.  

### 314. Use the TODO/FIXME Report
When you cannot resolve an issue as you write, insert TODO or FIXME comments.
These comments are gathered by the TODO/FIXME Directory Report, which makes it easy to find the files and areas that you have identified for rework.  
Most developers do not make a distinction between TODO and FIXME.  
They simply use TODO.  
Make the format of these comments consistent across a project, for example:  
```matlab  
% TODO : Revise if fraction is changed to percent.  
```  

### 315. Use the Profiler
Do not rewrite code just for speed unless you have to.  
If you do need faster execution, then be sure that you are changing the code that will make the most difference.  
The slow parts of your code may not be where you expect.  
Use the Profiler to find bottlenecks in execution speed and, in some cases, suggestions for speed improvement.  
You can also use the Profiler to assess test coverage of code lines.  

### 316. Use the Dependency Report
When assembling a toolbox or preparing for release, run the Dependency Report to verify that required child functions are included.  
This report can also reveal any unintended dependencies of one function on others, especially dependence on functions that you do not intend to release.  

### 317. Publish During Development
Use the Publish feature to view comments in a form that is more readable than plain text in the Editor window.  
This will make it easier to keep the code and comments consistent.  
It will also help you determine the right format for header comments and for comments within the code body.  

### 318. Find a Desktop Layout That Works for You
Reduce the distraction of window focus changes by arranging your most used windows in the MATLAB desktop.  
Many programmers find that the most useful desktop includes the Editor, the Command Window, the Workspace browser, and the Current Folder window.  
If you write code in the Editor and use version control, the Command History window is not important enough for the screen space that it would require.  

## Development Summary
> __Consciously use a development approach to produce better software in less time.__  
There are several approaches in use, and you can define your own hybrid.  
These approaches share several common elements when used with MATLAB.  

> __Write well-designed small modules – functions, methods, and classes.__  
Each module should do one thing or only a few things.  
Simple code is better than complicated code.  
A module that is simple but flexible in the inputs it accepts is better than one that is too ambitious in its number or variety of outputs.  

> __When relevant well-written code already exists, use it as a starting point for your own.__  

> __Use the tools in the MATLAB integrated development environment to increase code quality and save you time.__  
Especially useful elements of the IDE include the Desktop, the Editor, M-Lint, the Debugger, the TODO/FIXME report, the Profiler, and the Publish feature.  

> __Develop in the MATLAB Editor or one with equivalent capability.__  
Use the Editor features to make it easy to write code with clear layout and consistent identifier naming.  

> __Use M-Lint to find and fix errors, poor usage, and poor style.__  
Use the Publish feature to improve commenting and help keep comments consistent with the code.  

> __Write thorough test functions as you write the project code.__  
Write the test code so that you can run it automatically during development and before release.  
