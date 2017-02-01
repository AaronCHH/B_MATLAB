
<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [2. Formatting](#2-formatting)
  * [Layout](#layout)
    * [6. Keep Content Within the First Eighty Columns](#6-keep-content-within-the-first-eighty-columns)
    * [7. Split Long Code Lines at Graceful Points](#7-split-long-code-lines-at-graceful-points)
    * [8. Indent Statement Groups Three or Four Spaces](#8-indent-statement-groups-three-or-four-spaces)
    * [9. Indent Consistently with the MATLAB Editor](#9-indent-consistently-with-the-matlab-editor)
    * [10. Do Not Use Hard Tabs](#10-do-not-use-hard-tabs)
    * [11. Put Only One Executable Statement in a Line of Code](#11-put-only-one-executable-statement-in-a-line-of-code)
    * [12. Define Each Variable on a Separate Line](#12-define-each-variable-on-a-separate-line)
    * [13. Use Argument Alignment if it Enhances Readability](#13-use-argument-alignment-if-it-enhances-readability)
    * [14. Avoid Heavily Nested Code](#14-avoid-heavily-nested-code)
  * [White Space](#white-space)
    * [15. Include White Space](#15-include-white-space)
    * [16. Surround =, &, |, &&, and || by Spaces](#16-surround-and-by-spaces)
    * [17. Use White Space Around Operators When it Enhances Readability](#17-use-white-space-around-operators-when-it-enhances-readability)
    * [18. Follow Commas with a Space When it Enhances Readability](#18-follow-commas-with-a-space-when-it-enhances-readability)
    * [19. Insert Spaces for Multiple Commands in One Line](#19-insert-spaces-for-multiple-commands-in-one-line)
    * [20. Do Not Put Spaces Just Inside Parentheses](#20-do-not-put-spaces-just-inside-parentheses)
    * [21. Do Not Follow Function Names With a Space](#21-do-not-follow-function-names-with-a-space)
    * [22. Do Not Space Out Semicolons at the End of Lines](#22-do-not-space-out-semicolons-at-the-end-of-lines)
  * [Code Blocks](#code-blocks)
    * [23. Break Code of Any Appreciable Length into Blocks](#23-break-code-of-any-appreciable-length-into-blocks)
    * [24. Separate Logical Groups of Statements Within a Block by One Blank Line](#24-separate-logical-groups-of-statements-within-a-block-by-one-blank-line)
    * [25. Separate Major Code Blocks by More Than One Blank Line](#25-separate-major-code-blocks-by-more-than-one-blank-line)
    * [26. Separate Subfunctions by More Than One Blank Line](#26-separate-subfunctions-by-more-than-one-blank-line)
    * [27. Use Editor Cells](#27-use-editor-cells)
  * [Formatting Summary](#formatting-summary)

<!-- tocstop -->


# 2. Formatting
Graphic designers have long known that the appropriate use of space around and within text can enhance the reading experience.  
Use layout, white space, and visual organization to clarify relationships and avoid straining the reader’s short term memory.  
When you modify your code, preserve layout and spacing to make sure that its format is correct.  
Code that is easy to scan and read is more likely to be correct.  


## Layout
___The purpose of layout is to help the reader understand the code.___
It should accurately and consistently represent the log ical structure of the code.  
Indentation is particularly helpful for revealing code structure and patterns to provide context for individual statements.  

### 6. Keep Content Within the First Eighty Columns
___Avoid writing code in long lines.___
Short lines are easier to read than long ones.  
In general, the readability of text decreases as column width increases.  
The recommended eighty-column width is a common dimension for editors, terminal emulators, printers, and debuggers.  

Readability improves if unintentional line breaks and horizon tal scrolling are avoided when passing a file between program mers.  
Limiting lines to eighty columns also makes side-by-side viewing in two windows easier.  


### 7. Split Long Code Lines at Graceful Points
___A long line is one that exceeds the suggested eighty-column limit.___
If you have two or more statements on one line, then write each on a line of its own.  
If a line is too long because it contains a complicated expression, then rewrite the code to make one or more subexpressions on separate lines.  
Give the subexpressions meaningful names.  
Keep parenthetical elements together, if possible. The statement  

```matlab
if isnan(thisValue)&(thisValue>=initial
Threshold) &∼ ismember(value,valueArray)
  :
end
```
should be replaced by something like  

```{matlab}
valueIsPresent = ∼ isnan(thisValue);
valueIsValid = thisValue >= initialThreshold;
valueIsNew = ∼ ismember(thisValue, valueArray);
if (valueIsPresent && valueIsValid && valueIsNew)
  :
end
```
If the line is still too long, then wrap it at a point that is most easily readable.  
In general, break after a comma, right parenthesis, string terminator, or space. For example,  

```matlab
thisComment = [' All values above ' ...
    int2str(threshold) ' are discarded. ' ];
```
If the line is still too long, then wrap after an operator:  
```matlab
currentThreshold = baseValue+thisOffset- ...
    thisFudgeFactor;
```

### 8. Indent Statement Groups Three or Four Spaces
Good indentation is probably the single best way to reveal program structure.  
It can set off groups of statements from other code.  
It can also clarify the beginning and end of loops or conditional statements.  

Indentation of one space is too small to be clearly visible, so indentation of two spaces   is sometimes suggested to reduce the number of line breaks required to stay within eighty   columns for nested statements.  
However, two-character indentation is marginally visible, and in any case, MATLAB code is   usually not deeply nested.  

Indentation larger than four spaces can make nested code difficult to read because it   increases the chance that the lines must be split.  
Indentation of four spaces is the current default in the MATLAB Editor; three was the   default in some previous versions.  

Do not rely on counting spaces for indentation.  
Establish your standard in the Editor Preferences menu.  
Match both the tab size and indent size settings to achieve consistent display.  


### 9. Indent Consistently with the MATLAB Editor
The MATLAB Editor automatically provides indentation that clarifies code structure and is consistent with most recom mended practices for C++ and Java. If you use a different editor, then set it and your MATLAB Editor to produce consistent indenting so that you can easily transfer code.  

Indentation problems when using the Editor usually occur when the code is not written in sequence, for example, when code is inserted with copy and paste or another case is added after a selection construct is initially written. Use the Smart Indent feature in the Text menu to provide uniform indenta tion at the right places.  


### 10. Do Not Use Hard Tabs
If you use the MATLAB Editor, then select the option “Tab key inserts spaces” in the Preferences menu.  
If you use a different editor, then do not rely on hard tabs for indentation.  

Hard tabs can easily produce different amounts of indentation when displayed in different editors.  

### 11. Put Only One Executable Statement in a Line of Code
This practice improves readability and allows the JIT/ Accelerator to improve performance.  
Putting multiple statements on one line for conditional constructs or loops lacks an indentation cue for the reader.  
It may also produce lines that are too long.  
One line conditional constructs also tend to leave out the often important else code.  

Replace the conditional  
```matlab
if beta >= delta, alpha = beta; end
```
with  
```matlab
if beta >= delta
    alpha = beta;
end
```

Replace the one line loop  
```matlab
for k = 1:10, y = k.^2; end;
```
with an indented loop.  
```matlab
for k = 1:nValues
    y = k.^2;
end
```


### 12. Define Each Variable on a Separate Line
Using one line for multiple definitions tends to produce over crowded expressions, variable names that are too short, and unnecessary literal numbers.  

Replace  
```matlab
rows=10; cols=5; array=zeros(10,5);
```
with the more readable and more flexible  
```matlab
nRows = 10;
nCols = 5;
array = zeros(nRows, nCols);
```



### 13. Use Argument Alignment if it Enhances Readability
Code alignment can make split expressions easier to read and understand.  
Aligning the new line with the beginning of the similar expression on the previous line can also help reveal errors.  
Avoid using hard tabs for this alignment because the alignment may not be maintained in all editors.  
For example,  
```matlab      
weightedKids = (boyWeight * nBoys) + ...
(girlWeight * nGirls);
```
However, this type of alignment can be tedious to establish and maintain. It is not needed to make simple cases readable. The lines  
```matlab
foopattern(parameter1, parameter2, ...
    parameter3)
settext([' Long line split' ...
    ' into two parts. ' ]);
```    
are no clearer than  
```matlab
foopattern(parameter1, parameter2,
    parameter3)
settext([' Long line split' ; ' into two parts. ' ]);
```
If you have many expressions aligned in a statement, then this is probably a sign that you should rewrite the statement using intermediate variables.  

In general, do not align definition statements. Replace  
```
x =        3;
y =        4;
diagonal = 5;
```
with
```
x = 3 ;
y = 4 ;
diagonal = 5;
```

### 14. Avoid Heavily Nested Code
Heavily nested code, particularly in for, if, or switch con structs, should be rewritten to avoid unnecessary scrolling of the Editor window.  
Several practices can be used to reduce the amount of nesting.  
Straightforward vectorization can some times help reduce for loop nesting because most MATLAB programmers are used to reading it.  
In some cases, use of the switch/case construct may support less nesting than the use of if/elseif.  
The use of cell arrays with case may be more readable than a string of logical expressions with elseif.  
It may be helpful to extract some of the nested code into a function or subfunction.  


## White Space

### 15. Include White Space
Inline white space, the use of blanks or spaces, enhances under standing of the code by making the individual components of statements or expressions stand out.  
It is a major contributor to readability.  

### 16. Surround =, &, |, &&, and || by Spaces
Using space around the assignment character provides a strong visual cue separating the left- and right-hand sides of a state ment.  
Replace  
```matlab
simpleSum=firstTerm+secondTerm;
```
with  
```matlab
simpleSum = firstTerm+secondTerm;
```
Using space around the binary logical operators can clarify complicated expressions. The statement   
```matlab
a<b && c<d
```
is easier to visually parse than
```matlab
a<b&&c<d
```

### 17. Use White Space Around Operators When it Enhances Readability
Putting spaces around all operators is controversial. Some programmers find that it enhances readability. Others prefer shorter lines.  

Compare the widely spaced  

```matlab
simpleAverage = (firstTerm + second) / nTerms;
scale = 1 : nIterations;
```
with the tight  
```matlab
simpleAverage = (firstTerm+second)/nTerms;
scale = 1:nIterations;
```
with the intermediate  
```matlab
simpleAverage = (firstTerm+second) / nTerms;
scale = 1:nIterations;
```
Putting white space around all operators is not as common in MATLAB as it is in some other languages because MATLAB is a mathematically oriented language and the custom is to use less horizontal spacing for generic variables with short names. In practice  
```matlab
z = x+y;
```
is more common than  
```matlab
z = x + y ;
```
Also, putting spaces around all operators can obscure any structure within a compound expression.  

Replace  
```matlab      
(a + b * c) / (d * f - g)
```
with
```matlab
(a+b*c) / (d*f-g)
```


### 18. Follow Commas with a Space When it Enhances Readability
These spaces can make code that includes multiple arguments easier to scan. The line  
```matlab      
foo(alpha, beta, gamma)  
```  
is more readable than  
```matlab  
foo(alpha,beta,gamma)  
```  
In contrast, when the identifiers are short, the expression can look better without the space.  
```matlab  
foo(x, y)  
foo(x,y)  
```  
It is common practice not to include spaces after commas that separate array indices. Do not put spaces before a comma, colon, or semicolon.  


### 19. Insert Spaces for Multiple Commands in One Line
Putting multiple statements on one line is not recommended. If you choose to do it, then insert spaces to help the reader distinguish statements from expressions    
Replace    
```matlab  
if (nElements>1),disp(' Yes' ),end  
```  
with  
```matlab  
if (nElements>1), disp(' Yes' ), end  
```

### 20. Do Not Put Spaces Just Inside Parentheses
Do not put spaces immediately after a left or before a right parenthesis, bracket, or brace.  
Use of this extra spacing is tedious to apply consistently and does not enhance readability.  

### 21. Do Not Follow Function Names With a Space
MATLAB allows space between a function name and the left parenthesis before its input arguments.  
When you avoid inserting this space, it is easier to distinguish the function and command forms.  
Do follow a keyword with a space so that it does not look like a function.  

### 22. Do Not Space Out Semicolons at the End of Lines
Using a column of semicolons to visually define a block of code is a leftover practice from the days of line printer listings that is no longer needed or desirable.  
Maintaining the alignment when the code is changed is much more trouble than it is worth.  


## Code Blocks

### 23. Break Code of Any Appreciable Length into Blocks
Blocks read like paragraphs and help the reader chunk the code.  
Each block should be cohesive, performing a task such as initializing variables, checking parameters, or computing a task.  
The code lines in the block should be fairly self-contained with well-defined information passing to other blocks.  
Comments can precede a code block to summarize its purpose and provide any important explanations.  


### 24. Separate Logical Groups of Statements Within a Block by One Blank Line
Enhance readability by introducing vertical white space between logical units within a block.  
The use of one blank line gives a sufficient visual clue distinct from multiple blank lines between blocks.  

### 25. Separate Major Code Blocks by More Than One Blank Line
You can use two or three blank lines or section markup lines.  
This allows single blank lines within a long code block while still helping the entire block stand out from the adjacent blocks.  
The number of blank lines can depend on context.  
For example, fewer lines are appropriate when followed by a comment for the next code block.  

Do not use the comment symbol followed by a repeated character such as ∗ or – to visually define code blocks.  
This approach might have been helpful when programs were primarily viewed on a line printer listing.  
It is no longer as important now that comments are displayed in a different color from statements in the Editor.  
Blank lines establish enough of a break in an Editor window and look better than such ASCII art.  


### 26. Separate Subfunctions by More Than One Blank Line
You can use blank lines or section markup comment lines.  
This practice allows distinct visual breaks between the main function and subfunctions within a file.  

### 27. Use Editor Cells
Most code will be read in an editor.  
Use the section markup of Editor cells to provide visual separation between code blocks or subfunctions.  
In addition to supporting selective execution, cells enhance readability in the Editor and support the Publish feature.  
A cell break or a cell break after a blank line provides enough visual separation to adequately distinguish code blocks.  


## Formatting Summary
* Format the code to make it more readable.  
* Avoid long lines and multiple statements per line so that the code is easier to scan.  
* Indent consistently to reveal logical structure.  
* Use spaces consistently in appropriate places to make each line easier to read and interpret.  
* In particular, insert spaces around operators and expressions to reveal the structure and meaning of statements.  
  
* Write your code in logical blocks that can be read as paragraphs so that the program can be understood in chunks.  
* Use blank lines, comment lines, and Editor cell breaks to make these blocks easy to see.  
* Do not use lines of repeated characters to define blocks of code.  
