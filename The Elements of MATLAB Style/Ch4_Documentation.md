# 4. Documentation


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [4. Documentation](#4-documentation)
  * [General](#general)
    * [88. Provide Well-Written Code](#88-provide-well-written-code)
    * [89. Document Each Module Before or During Its Implementation](#89-document-each-module-before-or-during-its-implementation)
    * [90. Document the Interface for Those Who Will Use It](#90-document-the-interface-for-those-who-will-use-it)
    * [91. Document the Design and Implementation for Those Who Will Maintain It](#91-document-the-design-and-implementation-for-those-who-will-maintain-it)
    * [92. Consider Documenting Some Changes in Header Comments](#92-consider-documenting-some-changes-in-header-comments)
    * [93. Generate HTML Reference Pages](#93-generate-html-reference-pages)
    * [94. Integrate the Reference Pages with the Help Browser](#94-integrate-the-reference-pages-with-the-help-browser)
    * [95. Consider Providing PDF Documentation](#95-consider-providing-pdf-documentation)
  * [Comments](#comments)
    * [96. Make Comments Useful](#96-make-comments-useful)
    * [97. Be Sure that Comments Agree with the Code](#97-be-sure-that-comments-agree-with-the-code)
    * [98. Revise Comments to be Correct When the Code is Changed](#98-revise-comments-to-be-correct-when-the-code-is-changed)
    * [99. Put Restrictions in the Code, Not the Comments](#99-put-restrictions-in-the-code-not-the-comments)
    * [100. Clean up Commented Out Code before Release](#100-clean-up-commented-out-code-before-release)
    * [101. Make Comments Easy to Read](#101-make-comments-easy-to-read)
    * [102. Write Comments for the Publish Feature](#102-write-comments-for-the-publish-feature)
    * [103. Minimize Use of End-Line Comments](#103-minimize-use-of-end-line-comments)
    * [104. Consider End-of-Loop Comments](#104-consider-end-of-loop-comments)
    * [105. Consider Documenting Important Variables Near the Start of the File](#105-consider-documenting-important-variables-near-the-start-of-the-file)
    * [106. Consider Documenting Constant Assignments Where They are Defined](#106-consider-documenting-constant-assignments-where-they-are-defined)
    * [107. Use Voice and Person Appropriately](#107-use-voice-and-person-appropriately)
    * [108. Use Present Tense to Describe Code](#108-use-present-tense-to-describe-code)
    * [109. Use Complete Sentences in Descriptive Blocks](#109-use-complete-sentences-in-descriptive-blocks)
    * [110. You Can Use Incomplete Sentences in One-Liners](#110-you-can-use-incomplete-sentences-in-one-liners)
    * [111. Use Short Words](#111-use-short-words)
    * [112. Eliminate Cute Comments](#112-eliminate-cute-comments)
    * [113. Minimize the Use of ASCII Art](#113-minimize-the-use-of-ascii-art)
    * [114. Write All Comments in English](#114-write-all-comments-in-english)
    * [115. Format the Header Comments for Easy Publishing as Documentation](#115-format-the-header-comments-for-easy-publishing-as-documentation)
    * [116. Put the Header Comments in the Right Place](#116-put-the-header-comments-in-the-right-place)
    * [117. Use Title Markup for the Function Name](#117-use-title-markup-for-the-function-name)
    * [118. Document the Function Interface in the Syntax Section](#118-document-the-function-interface-in-the-syntax-section)
    * [119. Use the Actual Function Name Case in Comments](#119-use-the-actual-function-name-case-in-comments)
    * [120. Describe the Function Arguments in the Description Section](#120-describe-the-function-arguments-in-the-description-section)
    * [121. Describe Any Function Side Effects](#121-describe-any-function-side-effects)
    * [122. Describe Any Custom Exceptions that May be Generated](#122-describe-any-custom-exceptions-that-may-be-generated)
    * [123. Include Examples in the Header Comments](#123-include-examples-in-the-header-comments)
    * [124. Include See also in the Header Comments](#124-include-see-also-in-the-header-comments)
    * [125. Avoid Clutter in the Reference Page](#125-avoid-clutter-in-the-reference-page)
    * [126. Format Header Comments of classdef Files for the Help Browser](#126-format-header-comments-of-classdef-files-for-the-help-browser)
    * [127. Clarify Subclass Methods](#127-clarify-subclass-methods)
    * [128. Indent Block Comments to Match Code](#128-indent-block-comments-to-match-code)
    * [129. Place a Blank Line or Cell Break before a Block Comment](#129-place-a-blank-line-or-cell-break-before-a-block-comment)
    * [130. Do Not Use Comment Blocks for Block Comments](#130-do-not-use-comment-blocks-for-block-comments)
    * [131. Use Comment Block Syntax to Temporarily Bypass a Block of Code](#131-use-comment-block-syntax-to-temporarily-bypass-a-block-of-code)
    * [132. Indent Comments with the Code Block](#132-indent-comments-with-the-code-block)
    * [133. Do Not Follow a Single-Line Comment with a Blank Line](#133-do-not-follow-a-single-line-comment-with-a-blank-line)
    * [134. Resolve TODO/FIXME Comments](#134-resolve-todofixme-comments)
  * [Documentation Summary](#documentation-summary)

<!-- tocstop -->


## General
> There are large variations in the amount and character of doc umentation for software development projects.  
MATLAB specific style issues are concentrated in the internal documen tation intimately associated with the code files, particularly comments and reference pages.  
Documentation of a software routine should clarify what it is doing, as well as define the required and optional inputs and the available outputs.  
Help ful documentation is aimed at a knowledgeable but not nec essarily expert reader who is new to this program, yet familiar with the MATLAB language.  

> Where possible, the documentation should be generated from the m-file with little effort.  
The document should have read ability features that make it easier to read than simple unfor matted comments.  
In the case of the MATLAB product, this means using the Publish feature.  


### 88. Provide Well-Written Code
___The best documentation for a program is clean code.___  
Comments cannot justify poorly written code, nor can they make up for code lacking appropriate name choices, good layout, or an explicit logical structure. Such code should be rewritten.  

### 89. Document Each Module Before or During Its Implementation
Development projects are rarely completed on schedule.  
If documentation is left for last, then it will get cut short.  
Such documentation is often too little, too late, or even absent.  
Writing some documentation early assures that it gets done, and this practice will probably reduce development time.  
Writing at least some of the documentation before coding will also encourage you to think more about the functionality and interfaces of the modules.  

### 90. Document the Interface for Those Who Will Use It
Clearly describe function usage, input and output arguments, and constraints.  
Provide the user with enough information to correctly and effectively use the function or class.  

### 91. Document the Design and Implementation for Those Who Will Maintain It
Good code gets used.  
Code has a life after you write it, and most good programs are not write-once.  
It is not unusual that good code is modified to increase its functionality or general ity.  
The code modifier will need to read and understand the code.  
Clear code is essential, but good documentation can be a significant help.  
With a well-written, well-documented program, making changes is not a painful process.  

### 92. Consider Documenting Some Changes in Header Comments
The best practice is to put any change information in your version control system.  
Even when you do use version con trol, checking in many files at a time may lead to inadequate descriptions in the change log.  
Putting specific information in the comments of each file can make changes easier to track.  

If you do not use version control, then changes should be documented in the file.  
It is usually better to do this in the header comments rather than clutter the code with inter spersed comments.  
This change information is aimed at a maintainer rather than a user.  
It should be formatted so that it does not clutter the help text or reference page.  

### 93. Generate HTML Reference Pages
Provide documentation pages for your code in HTML.  
For matted HTML pages are usually more readable than plain text comments.  
Writing to HTML supports the best compatibility with differing environments for viewing documentation.  

### 94. Integrate the Reference Pages with the Help Browser
Integration with the Help browser combines your reference anddocumentationpageswiththoseincludedintheMATLAB product.  
This integration supports use of the same Search, Contents, and Link features that are familiar to MATLAB users.  
The Help browser and the related Function Browser are the best tools for users to determine the available functionality, the names of the desired functions, and how to use them.  

### 95. Consider Providing PDF Documentation
The use of PDF supports bundling the reference pages into a single file for better portability.  
Reading documentation in a single file can be easier than following hyperlinks through HTML pages.  
Printing a single PDF file is often more convenient than a collection of HTML files.  

## Comments
> Comments allow programmers to communicate their thoughts in addition to the code.  
They should add informa tion to the code, not simply replicate it.  
Typical uses for com ments are to explain usage, express the purpose of the code, provide reference information, justify decisions, describe lim itations, and mention needed improvements.  
Well-formatted comments make it easy to generate user documentation using Editor features such as Publish.  

> Comments close to the code they describe are more likely to be correct and more likely to help code understanding.  
Embedding a description in the code file makes it less likely that the code and documentation will diverge, as can easily occur with a separate document.  
Experience indicates that it is better to write comments at the same time as the code rather than to intend to add comments later.  

### 96. Make Comments Useful
Comments are about communication and nothing else.  
Com ments are guides to the code.  
Their quality is more important than their quantity.  
Content-free or ineffective comments are not neutral; rather, they actually make the reader’s task more difficult.  
A bad, irrelevant, or useless comment gets in the way of the reader and is worse than no comment.  

Do not comment the obvious.  
Avoid comments that just restate the code and do not add to understanding.  
The code itself should make clear what it does.  
Write comments to describe why or how the code works.  
Comments address ing why are especially important for code that implements business logic or is domain-specific.  
Replace  
```matlab  
c = zscore(r); % Apply zscore.  
```  
with  
```matlab  
% Center and scale the data.  
normalizedRadius = zscore(radius);  
```  

### 97. Be Sure that Comments Agree with the Code
Take care that the comment is consistent with the code.  
Make the action described in the comment consistent with what the code does.  
Use the same spelling and capitalization for any identifier names in the comments and the code.  

The combination of inconsistent comments and poor variable names is particularly pernicious.  
In this example written by a user, the code performs a count – the test is just a step in the counting.  
Also, it is counting even numbers, not odd.  
So, the comment is inconsistent in two ways:  
```matlab  
% Test for odd numbers.  
if mod(x,2) == 0  
    oddno = oddno+1;  
end  
```  
To count odd numbers, the code and comment should be something like  
``` matlab  
% Count odd numbers.  
if mod(x,2) == 1  
    nOdd = nOdd+1;  
end  
```  
If the algorithm behind the original code was the desired action, then it could be rewritten as  
``` matlab  
% Count even numbers.  
if mod(x,2) == 0  
    nEven = nEven+1;  
end  
```  
Comments referring to edge conditions are especially subject to becoming incorrect when code changes.  
Delete the incor rect and unnecessary comment:  
``` matlab  
% a must be greater than b  
relationIsCorrect = a>=b;  
```  


### 98. Revise Comments to be Correct When the Code is Changed
Keep comments current.  
Comments tend to rot.  
Avoid this by keeping comments accurate and consistent with the code.  
When you change the code, change the comment.  
The lines  
```matlab  
% Compute the median absolute deviation.  
spread = mean(abs(deviation));  
```  
probably resulted when the definition ofspread was changed in the code but not in the comments.  


### 99. Put Restrictions in the Code, Not the Comments
When you write any comment, consider whether it can be expressed in the code.  
This is especially true when the comment states any restriction on the actions or variables used in the code.  
Be alert to the use of “must” or “always” in comments.  

Replace  
```matlab  
% beta must be greater than 0  
```  
With  
```matlab  
assert (beta>0, ' Keep beta greater than zero. ' )  
```  
or similar code.  
If an imperative statement seems to be required in a comment, then be sure that the code implements it.  
Replace  
```matlab  
% Make b between a and c  
```  
with  
```  
b = max(b,a);  
b = min(b,c);  
```  
This code is also more explicit about the meaning of “between.”  


### 100. Clean up Commented Out Code before Release
The use of version control greatly reduces the need for commenting out code.  
Sometimes it can be convenient during development, but commented out code should not be released.  
Just delete it.  
Otherwise, any future reader would won der why it was important to leave in the commented out code, which would slow down understanding.  

### 101. Make Comments Easy to Read
As in code, consistency in comment format helps the reader.  
Readability in comments is more important than proper grammar.  
Place one space between the % comment symbol and the comment text to support publishing to letter-spaced text.  
Use two spaces to produce monospaced text.  
Place comments above and aligned with the code to which they refer.  


### 102. Write Comments for the Publish Feature
The Publish feature of the Editor provides formatted documentation for functions with or without code display, and for scripts with or without execution results.  
The basic comment format for publishing can be defined with a limited but useful set of special markup characters.  
HTML is also available for comment markup, but it will, of course, require longer comment text that is more difficult to read in the Editor.  

Published comments are usually more readable than unformatted comments because they include features such as headers, bullet lists, and letter spaced and monospaced text.  
The presentation of the published output will vary, depending on whether you publish to HTML, Word, or some other format.  

### 103. Minimize Use of End-Line Comments
The descriptiveness of end-line comments is constrained by the typical line length, tending to make them cryptic.  
In general, they should only be used as an adjunct to variable declaration or to identify loop end statements.  
Other types of comment should usually be on their own line.  
Very short comments can appear on the same line as the code they describe, but should be spaced far enough apart to separate them from the statements.  

### 104. Consider End-of-Loop Comments
In long nested loop constructs, it can be difficult to visually discern which end goes with which loop.  
This can be important when there are executable statements between the end lines.  

Use a comment after the end keyword that indicates which block is ending.  
This practice is most useful when an included block is more than twenty lines long or there are more than two levels of nesting. For example,  
```matlab  
for iFile = 1:nFiles  
    for jPosition = 1:nPositions  
        :  
    end % of position loop  
        :  
end % of file loop  
```

### 105. Consider Documenting Important Variables Near the Start of the File
It is standard practice in other languages to document variables where they are declared.  
Because the MATLAB language does not use variable declarations, this information can be provided at initialization or in stand-alone comments:  
```matlab  
frame = nan(480, 640); % Size for NTSC.  
% points Points are in rows.  
```  

### 106. Consider Documenting Constant Assignments Where They are Defined
This gives additional information on rationale, usage, or constraints:
```matlab
THRESHOLD = 10; % Maximum noise level.
```

### 107. Use Voice and Person Appropriately
In general, use active voice with second or third person, particularly when the comment refers to nearby code:  
```matlab  
% Revise currentSpeed based on several fields.  
```  
and  
```matlab  
% currentSpeed limits altitudeGoal.  
```  
Use passive voice and third person when it reads better, which often occurs when referring to state or more distant code:  
```matlab  
% These data points are normalized.  
```  
In general, limit the use of first person to temporary comments such as TODO.  


### 108. Use Present Tense to Describe Code
The use of present tense in comments is more conventional and less ambiguous than the use of future tense.  
Replace  
```matlab  
% y will be constrained by x.  
```  
with  
```matlab  
% x constrains y.  
```  

### 109. Use Complete Sentences in Descriptive Blocks
The text in comment blocks is easier to read when it is in complete sentences:  
```matlab
% This calculation uses the Blinkenstaff equation
% as modified by Hershey. The usual variable names
% have been modified to agree with our style.
```

### 110. You Can Use Incomplete Sentences in One-Liners
Because a one-line comment is adjacent to the code, its meaning can be clear without using a complete sentence:  
```matlab  
% lower limit on spoonSize.  
```  

### 111. Use Short Words
Write comments using short, familiar words.  
The reader should not need to consult a dictionary to understand the words in a comment.  

### 112. Eliminate Cute Comments
The reader will be justifiably annoyed by comments such as  
```matlab  
% Do the thing.  
% Magic occurs here.  
```  

### 113. Minimize the Use of ASCII Art
Do not enclose comments in large boxes drawn with asterisks or other characters.  
This is an old-fashioned practice and rarely helps readability.  
These boxes cause visual separation of the comments from the code, and it takes too much time to maintain a consistent look when the text changes.  
Blank lines before block comments should be enough.  

### 114. Write All Comments in English
In an international environment, English is the preferred lan guage.  

* __Header Comments__  

The header comments comprise the first contiguous block of comments in a file.
A header comment block serves as a preface or introduction.
It should contain the purpose of the file and descriptions of the interface (input and output variables).
The header comments are usually displayed in the Help browser or in response to the help command without displaying the code, so make them adequate for the user.

Header comments are an exception to the small file rule.
They should be sufficient for a new user to use the function properly, as well as a complete quick reference to options and arguments for the sophisticated user.



### 115. Format the Header Comments for Easy Publishing as Documentation
The MATLAB Publish feature is an excellent tool for auto mated documentation.    
Use comment syntax and Editor cell features that support publishing in a clear, easy-to-read for mat.    
Include links to figures and equations if they will help the reader understand the purpose or function of the software.    

The published output should be consistent with the reference pages for MATLAB standard functions.    
It should include the function name as a title, a one-sentence summary, input and output syntax, description of what the function does and of its arguments, a list of related functions, and one or more examples.    
Use the Help Report to list any missing sections in the header comments.    

Header comments that are formatted for publishing will also work well when displayed with the help command.    
Well formatted header comments look something like    

```matlab
%% pho
% Make savory soup.
% % Syntax
%# lunch = pho(meat);
%# lunch = pho(meat, condiment);
%% Description
% pho is a meal alternative to teriyaki.
% The input ingredients are combined with a
% soup base.
%
% * meat - a string: ' chicken' or ' beef'
% * condiment - a string: ' cilantro' or ' sprouts'
% * lunch - a structure with each ingredient
%
%% Example
%# lunch = pho(' beef' , ' cilantro' )
%% See also
% wrap

```
The Publish feature automatically generates a contents list.  
This is generally unnecessary in a function reference page, and you may want to delete it.  


### 116. Put the Header Comments in the Right Place
Traditional MATLAB header comments follow the function statement.  
With the new Publish feature, you will achieve better documentation by placing the header comments in the proper format above the function statement.  

### 117. Use Title Markup for the Function Name
Put the function name on the first line of the file.  
Make appropriate use of a % % comment line to have it publish as a title.  
Write a one-sentence summary on the next comment line.  
This sentence is particularly important when the function’s purpose is not clear from its name:  
```matlab  
%% pho  
% Make savory soup.  
%%  
```  
These comments publish as  


### 118. Document the Function Interface in the Syntax Section
The user will need to know the input and output arguments and their sequences.  
The syntax and description sections should provide full enough interface information that it is not necessary to maintain an independent document for this purpose.  

The syntax options should start with the most basic options, and then detail the rest of the calling forms.  
When default values exist, indicate them in the description comments.  
Use monospaced code format to provide one statement per line:  
```matlab  
%% Syntax  
% # lunch = pho(meat);  
% # lunch = pho(meat, condiment);  
```  

### 119. Use the Actual Function Name Case in Comments
Do not use uppercase in the comments when the function name is lowercase.  
Using uppercase in the comments can cause some confusion because the function name and filename are usually in lowercase.  
Also, mixed case is beginning to appear in function names, raising the possibility of even more confusion.  

The MATLAB product practice is mixed.  
In the m-file header comments, the function name is often written in all uppercase, which is intended to make the function name prominent when displayed in the Command Window.  
In the Help browser page, the actual case for the function name is used in the syntax block and description.  

Most of us will choose not to maintain independent files for m-file comments and reference pages, so use the actual case of the function name in the header comments.  
Replace  
```  
% PHO is a meal  
```  
with  
```  
% pho is a meal  
```  

### 120. Describe the Function Arguments in the Description Section
Describe what the function does and how to use it well enough that the users will not need to refer to the code.  
Usually the arguments are described in their order in the function call, starting with the input arguments.  
Use a bullet list or code format to put each argument on its own line.  
To make a bullet list  
```matlab  
%  
% * meat - a string: ' chicken' or ' beef'  
% * condiment - a string: ' cilantro' or ' sprouts'  
% * lunch - a structure with each ingredient  
%  
```  
To make a code style list  
```matlab  
%  
% # meat - a string: ' chicken' or ' beef'  
% # condiment - a string: ' cilantro' or ' sprouts'  
% # lunch - a structure with each ingredient  
%  
```  

Discuss any special requirements for the input arguments.  
The user will need to know if the input must be expressed in particular units, in a particular range, or as a particular type of array:  
```matlab  
% ejectionFraction is from 0 to 1, not percentage.  
% elapsedTimeSeconds must be one dimensional.  
```  
### 121. Describe Any Function Side Effects
Side effects are actions of a function other than assignment of the output variables.  
A common example is plot generation.  
Descriptions of any side effects should be included in the description comments block so that they appear in the reference page and are easy for the user to find.  

### 122. Describe Any Custom Exceptions that May be Generated
This practice can help the user quickly interpret any runtime exceptions:  
```matlab  
% An exception is thrown if altitude is  
% negative.  
```  

### 123. Include Examples in the Header Comments
This practice is a useful supplement to the syntax lines.  
Some users find it easier to learn how to use a function from an example rather than the syntax section.  
Use monospaced text to display the example code.  
When you can write it compactly, provide a complete example with setup and output:  
```matlab  
%% Example  
% # lunch = pho(' beef' , ' cilantro' )  
```  


### 124. Include See also in the Header Comments
The see also related function list can provide useful links both to MATLAB distribution and locally developed functions.  
It allows the reader to easily compare related functions and to “discover” a similar function without knowing its name:  
```matlab  
% % See also  
% wrap  
```  
In some contexts, the MATLAB product will automatically generate hyperlinks to these function names.  

### 125. Avoid Clutter in the Reference Page
It is common to include author, copyright, or other organization information in header comments.  
There should be a blank line between the main header comments and these comments so that they are not displayed in published output or in response to the help command.  

### 126. Format Header Comments of classdef Files for the Help Browser
Many of the practices for formatting function header com ments also apply to classdef files, but you can produce better results if you do not use the Publish feature.  
The Help on Selection feature provides useful class information, and it makes sense to include this information in the reference page.  
In this case, you select the class name, apply Help on Selec tion, and copy the HTML version of the displayed page to a file in your help folder.  

Write a comment header for classdef files that includes the sections: description, syntax, examples, and see also.  
Because you do not use the Publish feature, its special comment-based markup does not work.  
The text in these sections (except for see also) will appear in monospaced font.  


### 127. Clarify Subclass Methods
Use the description section of method comments to state any relationship with the corresponding superclass method.  
Use the verb "override" to indicate that a subclass method replaces a superclass method and does not call the superclass method; use the verb “extend” to indicate that a subclass method calls the superclass method (in addition to its own behavior).  

*	__Block Comments__  

Block comments are used to provide descriptions of files, code sequences, data structures, and algorithms.  
The multiline organization of block comments is usually easier to read than comments interspersed with code statements.  
They introduce sections and visually set off blocks of code.  
They provide a convenient place to describe the role of the code block and any special processing that is used.  
Block comments can also be useful for describing local constants defined in a block near the beginning of a function or script.  

### 128. Indent Block Comments to Match Code
Block comments inside a function or method should precede he code they describe and be indented to the same level.  

### 129. Place a Blank Line or Cell Break before a Block Comment
Use a blank comment line, a blank cell break line, or a sec tion title to set the block comment off from the preceding code.  
These separators help the block comment look like a paragraph in the Editor:  
```matlab  
%  
% Use a global search to deal with local minima.  
% Use the alpha algorithm because we have found  
% problems with the faster beta algorithm.  
```  
A section title using a cell break before a block comment also publishes well.  
You must place a blank comment line between the section title and the block comment for correct publishing if you want to suppress the block comment. For example,  
```matlab  
%% Minimizey within constraints on x.  
%  
% Use a global search to deal with local minima.  
% Use the alpha algorithm because we have found  
% problems with the faster beta algorithm.  
```  
Place a blank comment line between comment paragraphs.  
This helps the reader by chunking up the text for easier digestion.  


### 130. Do Not Use Comment Blocks for Block Comments
A comment block is a block of text between the special char acters %{and %} instead of individual lines starting with % characters.  
For a comment block, the %{and %} characters must appear on their own lines.  
Unfortunately, the Publish feature does not work with comment blocks.  
For example,  
```matlab  
%{  
Here is a comment block with some formatting.  
* one  
* two  
* three  
%}  
```  
The published output looks like  
```matlab  
%{  
Here is a comment block with some formatting.  
* one  
* two  
* three  
%}  
```  
instead of the individual comment line version  
```matlab  
% %  
% Here are comments with some formatting.  
%  
% * one  
% * two  
% * three  
%  
```  
If you do use block comments, then apply even left alignment in comment blocks to avoid a jagged distraction.  
Do not bother with aligned asterisks or other characters along the right side.  
They take too much time to maintain when the comment is changed.  


### 131. Use Comment Block Syntax to Temporarily Bypass a Block of Code
It is easier to spot code that is commented out using comment blocks in the Editor, rather than the if 0 ... end construct.  
This may be the best use of comment blocks.  
Remove the code or the blocks before code release.  

__Interspersed or Inline Comments__  

Use interspersed comments to describe short implementation details.  
These include unusual or obtuse algorithms, workarounds, limitations, or code that should be reworked.  

Interspersed comments tend to break up the flow of both code and comments.  
Using a block of comments is usually a better practice for longer descriptions.  
The block approach also publishes better.  


### 132. Indent Comments with the Code Block
Avoid any other comment indentation that would break the layout of the code block.  
Short comments can appear on a single line indented to the level of the code that follows.  
If a comment cannot be written in a single line, then it should follow the block comment format.  

### 133. Do Not Follow a Single-Line Comment with a Blank Line
The blank lines take up too much screen real estate.  
They also reduce the connection between the comment and the code.  

### 134. Resolve TODO/FIXME Comments
You can add TODO or FIXME in a comment to generate an automated task list using the TODO Directory Report.  
Resolve and remove these comments before release.  
They should not be part of the released code or documentation.  

## Documentation Summary

> __Document files to meet the needs of the readers.__  
Users need to know how to use the function, class, or method correctly without reading the code.  
The best way to support them is to provide well-formatted, informative reference pages that are consistent with standard practice and integrated into the Help browser.  
At a minimum, supply syntax, description, examples, and names of related functions.  

> __The easiest way to produce these reference pages is to use the Publish feature with header comments that include the appropriate content and markup.__  
Generating the reference pages directly from the code file makes it more likely that the two will be consistent.  
Include formatted comments in the same file as the code so that you can easily generate these pages.  

> __Developers need to know what the code does, and how and why it does what it does.__  
The best and most reliable documentation for them is clean code with good layout, naming, and logic.  
Informative and accurate comments in the code body are also a great help.  
Try to write the code so that working with it correctly does not depend on any constraints in the comments.  

> __Write useful, not redundant, comments.__  
Keep them consistent with code changes.  
Writing the comments while you code may help you write better code.  
Write comments in the code body so that they are easy for developers to read and associate with the relevant code.  
Assume that the code will be read in an editor.  
Use formatting that chunks the comments and code for easier scanning.  
