# 5. Programming
> __Writing software requires making choices.__  
If you choose the simplest and clearest option, then the code is more likely to be correct, useful, and sustainable.  
This advice was valid decades ago and is still relevant today.  
__Modern agile development approaches emphasize simple code as a core value because it is quicker to develop, easier to test, and easier to modify.__  


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [5. Programming](#5-programming)
  * [General](#general)
    * [135. Avoid Cryptic Code](#135-avoid-cryptic-code)
    * [136. Avoid Off-By-One Mistakes](#136-avoid-off-by-one-mistakes)
    * [137. Attend to NaN Results](#137-attend-to-nan-results)
    * [138. Consider Using isfinite](#138-consider-using-isfinite)
    * [139. Use Programming Patterns or Idioms](#139-use-programming-patterns-or-idioms)
  * [Variables and Constants](#variables-and-constants)
    * [140. Do Not Reuse Variable Names Unless Required by Memory Limitation](#140-do-not-reuse-variable-names-unless-required-by-memory-limitation)
    * [141. Beware of Mistyping Variable Names](#141-beware-of-mistyping-variable-names)
    * [142. Minimize the Use of Literal Numbers in Statements](#142-minimize-the-use-of-literal-numbers-in-statements)
    * [143. Write Floating Point Values with a Digit Before the Decimal Point](#143-write-floating-point-values-with-a-digit-before-the-decimal-point)
    * [144. Avoid Showing Excessive Decimal Places](#144-avoid-showing-excessive-decimal-places)
    * [145. Avoid Mixing Units within a Program](#145-avoid-mixing-units-within-a-program)
    * [146. Use Caution with Floating Point Comparisons](#146-use-caution-with-floating-point-comparisons)
    * [147. Limit Boolean Variable Values to True or False](#147-limit-boolean-variable-values-to-true-or-false)
    * [148. Do Not Assume Array Size](#148-do-not-assume-array-size)
    * [149. Use Appropriate Numerical Class Conversions](#149-use-appropriate-numerical-class-conversions)
    * [150. Minimize the Use of Global Variables](#150-minimize-the-use-of-global-variables)
    * [151. Minimize the Use of Global Constants](#151-minimize-the-use-of-global-constants)
    * [152. Define Local Constants Only Once](#152-define-local-constants-only-once)
    * [153. Do Not Declare Unrelated Variables in a Single Line](#153-do-not-declare-unrelated-variables-in-a-single-line)
  * [Character Strings](#character-strings)
    * [154. Consider Using strcmpi](#154-consider-using-strcmpi)
    * [155. Use lower or upper When You Cannot Use strcmpi](#155-use-lower-or-upper-when-you-cannot-use-strcmpi)
    * [156. Use isempty](#156-use-isempty)
    * [157. Use fullfile](#157-use-fullfile)
    * [158. Compute with Numbers for Speed](#158-compute-with-numbers-for-speed)
    * [159. Consider Using Character Arrays for Speed](#159-consider-using-character-arrays-for-speed)
    * [160. Consider Using unique](#160-consider-using-unique)
  * [Structures](#structures)
    * [161. Use Structures for Associated Data](#161-use-structures-for-associated-data)
    * [162. Use Structures for Metadata](#162-use-structures-for-metadata)
    * [163. Organize a Structure Based on How It Will be Accessed](#163-organize-a-structure-based-on-how-it-will-be-accessed)
    * [164. Put Structure Fields in a Helpful Order](#164-put-structure-fields-in-a-helpful-order)
    * [165. Be Careful with Fieldnames](#165-be-careful-with-fieldnames)
  * [Cell Arrays](#cell-arrays)
    * [166. Consider Using Cell Arrays for Strings](#166-consider-using-cell-arrays-for-strings)
    * [167. Look Out for Cells within Cells](#167-look-out-for-cells-within-cells)
    * [168. Consider Using Cell Arrays for Ragged Arrays](#168-consider-using-cell-arrays-for-ragged-arrays)
  * [Expressions](#expressions)
    * [169. Write Short Expressions](#169-write-short-expressions)
    * [170. Put Numbers Before the Multiplication Operator](#170-put-numbers-before-the-multiplication-operator)
    * [171. Make the Denominator Clear](#171-make-the-denominator-clear)
    * [172. Use Parentheses](#172-use-parentheses)
    * [173. Use a Clear Form for Relational Expressions](#173-use-a-clear-form-for-relational-expressions)
    * [174. Use && or || by Default for Scalar Operands](#174-use-or-by-default-for-scalar-operands)
  * [Statements](#statements)
    * [175. Write Short Statements](#175-write-short-statements)
    * [176. Avoid Use of eval When Possible](#176-avoid-use-of-eval-when-possible)
  * [Loops](#loops)
    * [177. Initialize Loop Variables Immediately Before the Loop](#177-initialize-loop-variables-immediately-before-the-loop)
    * [178. Initialize Using nan or false Rather Than zeros](#178-initialize-using-nan-or-false-rather-than-zeros)
    * [179. Do Not Change the Loop Index Variable Inside a Loop](#179-do-not-change-the-loop-index-variable-inside-a-loop)
    * [180. Minimize the Use of break in Loops](#180-minimize-the-use-of-break-in-loops)
    * [181. Minimize the Use of continue in Loops](#181-minimize-the-use-of-continue-in-loops)
    * [182. Avoid Unnecessary Computation within Loops](#182-avoid-unnecessary-computation-within-loops)
    * [183. Be Careful of Infinite while Loops](#183-be-careful-of-infinite-while-loops)
    * [184. Be Careful of Count Errors in while Loops](#184-be-careful-of-count-errors-in-while-loops)
  * [Conditionals](#conditionals)
    * [185. Avoid Complicated Conditional Expressions](#185-avoid-complicated-conditional-expressions)
    * [186. In General, Include an else Statement with if](#186-in-general-include-an-else-statement-with-if)
    * [187. Put the Normal Branch in the if Part](#187-put-the-normal-branch-in-the-if-part)
    * [188. Avoid Unnecessary if Constructs](#188-avoid-unnecessary-if-constructs)
    * [189. Use a Practical Order for elseif Conditions](#189-use-a-practical-order-for-elseif-conditions)
    * [190. Avoid Unnecessary elseif Blocks](#190-avoid-unnecessary-elseif-blocks)
    * [191. Avoid Unnecessary Levels of Nesting in Control Structures](#191-avoid-unnecessary-levels-of-nesting-in-control-structures)
    * [192. Try to Simplify Nested if Constructs](#192-try-to-simplify-nested-if-constructs)
    * [193. Avoid the Conditional Expression if 0](#193-avoid-the-conditional-expression-if-0)
    * [194. Include otherwise with switch Statements](#194-include-otherwise-with-switch-statements)
    * [195. Consider Using a Cell Array to Simplify a switch Construct](#195-consider-using-a-cell-array-to-simplify-a-switch-construct)
    * [196. Use if When the Condition is Most Clearly Written as an Expression](#196-use-if-when-the-condition-is-most-clearly-written-as-an-expression)
    * [197. Use switch When the Condition is Most Clearly Written as a Value](#197-use-switch-when-the-condition-is-most-clearly-written-as-a-value)
    * [198. When Either if or switch Can Work, Use the More Readable One](#198-when-either-if-or-switch-can-work-use-the-more-readable-one)
  * [Logical Functions](#logical-functions)
    * [199. Use logical to Cast Variables](#199-use-logical-to-cast-variables)
    * [200. Use true or false Functions and Values](#200-use-true-or-false-functions-and-values)
    * [201. In General Use isequal Rather Than ==](#201-in-general-use-isequal-rather-than)
  * [Functions](#functions)
    * [204. Modularize](#204-modularize)
    * [205. Write Code as Functions When Possible](#205-write-code-as-functions-when-possible)
    * [206. Write Simple Functions](#206-write-simple-functions)
    * [207. Design for Loose Coupling](#207-design-for-loose-coupling)
    * [208. Use Subfunctions Appropriately](#208-use-subfunctions-appropriately)
    * [209. Hide Implementation Details](#209-hide-implementation-details)
    * [210. Write for High Cohesion](#210-write-for-high-cohesion)
    * [211. Use Existing Functions](#211-use-existing-functions)
    * [212. Eliminate Overlapping Functions](#212-eliminate-overlapping-functions)
    * [213. Provide Some Generality in Functions](#213-provide-some-generality-in-functions)
    * [214. Write a Function At One Level of Abstraction](#214-write-a-function-at-one-level-of-abstraction)
    * [215. Write Convenience Functions](#215-write-convenience-functions)
    * [216. Make Interaction Clear](#216-make-interaction-clear)
    * [217. Name All Input Arguments](#217-name-all-input-arguments)
    * [218. Write Boolean Functions to Return true or false](#218-write-boolean-functions-to-return-true-or-false)
    * [219. Make Logical Output and Function Name Consistent](#219-make-logical-output-and-function-name-consistent)
    * [220. Minimize Input Flag Arguments](#220-minimize-input-flag-arguments)
    * [221. Write Arguments in Useful Order](#221-write-arguments-in-useful-order)
    * [222. Use Lazy Evaluation](#222-use-lazy-evaluation)
    * [223. Make Input and Output Arrays Consistent](#223-make-input-and-output-arrays-consistent)
    * [224. Use a Structure to Replace a Long List of Function Arguments](#224-use-a-structure-to-replace-a-long-list-of-function-arguments)
    * [225. Consider an Options Structure](#225-consider-an-options-structure)
    * [226. Consider varargin and varargout](#226-consider-varargin-and-varargout)
    * [227. Use Parameter-Value Pairs for Optional, Unordered Input Arguments](#227-use-parameter-value-pairs-for-optional-unordered-input-arguments)
    * [228. In General, Use Caller Variable Names Consistent with the Function Argument Names](#228-in-general-use-caller-variable-names-consistent-with-the-function-argument-names)
    * [229. Define Imports Where They are Easy to Find](#229-define-imports-where-they-are-easy-to-find)
    * [230. Use Anonymous Functions Rather Than Inline Functions](#230-use-anonymous-functions-rather-than-inline-functions)
    * [231. Use Function Handles](#231-use-function-handles)
    * [232. Avoid Including Hidden Side Effects](#232-avoid-including-hidden-side-effects)
    * [233. Refactor](#233-refactor)
  * [Input and Output](#input-and-output)
    * [234. Write Input Functions](#234-write-input-functions)
    * [235. Provide Some Input Validity Checking](#235-provide-some-input-validity-checking)
    * [236. Expect NaN Values in Data](#236-expect-nan-values-in-data)
    * [237. Use feof for Reading Files](#237-use-feof-for-reading-files)
    * [238. Make Output Modules](#238-make-output-modules)
    * [239. Format Output for Easy Use](#239-format-output-for-easy-use)
    * [240. Provide for Automation](#240-provide-for-automation)
  * [Classes and Objects](#classes-and-objects)
    * [241. Keep Classes Simple](#241-keep-classes-simple)
    * [242. Avoid Classes with Ambiguous Overlap](#242-avoid-classes-with-ambiguous-overlap)
    * [243. Construct Valid Objects](#243-construct-valid-objects)
    * [244. Follow Constructor Conventions](#244-follow-constructor-conventions)
    * [245. Define Small, Simple Methods](#245-define-small-simple-methods)
    * [246. Write Methods That You Can Unit Test](#246-write-methods-that-you-can-unit-test)
    * [247. Do Not Write a Method That Can Produce an Invalid Property](#247-do-not-write-a-method-that-can-produce-an-invalid-property)
    * [248. Avoid Incomplete Public Methods](#248-avoid-incomplete-public-methods)
    * [249. Try to Make Properties Private](#249-try-to-make-properties-private)
    * [250. Do Not Expose Properties with Behavior](#250-do-not-expose-properties-with-behavior)
    * [251. Avoid Writing Methods with Many Input Arguments](#251-avoid-writing-methods-with-many-input-arguments)
    * [252. Validate Method Argument Values](#252-validate-method-argument-values)
    * [253. Check for a Property’s Existence Before Using It](#253-check-for-a-propertys-existence-before-using-it)
    * [254. Refactor Repeated Code Into Methods](#254-refactor-repeated-code-into-methods)
    * [255. Overload Standard Functions When Possible](#255-overload-standard-functions-when-possible)
    * [256. Avoid Unconventional Usage of Overload Names](#256-avoid-unconventional-usage-of-overload-names)
    * [257. Do not Overload && or ||](#257-do-not-overload-or)
    * [258. Do not Get Carried Away with Inheritance](#258-do-not-get-carried-away-with-inheritance)
    * [259. Place Method Functions in Folders Consistently](#259-place-method-functions-in-folders-consistently)
    * [260. Use Java Syntax for Java Methods](#260-use-java-syntax-for-java-methods)
  * [Exceptions, Errors, and Warnings](#exceptions-errors-and-warnings)
    * [261. Use Appropriate Error Handling](#261-use-appropriate-error-handling)
    * [262. Prepare for Errors](#262-prepare-for-errors)
    * [263. Make Error Messages Informative](#263-make-error-messages-informative)
    * [265. Use Exceptions](#265-use-exceptions)
    * [266. Support Error Returns](#266-support-error-returns)
    * [267. Use Appropriate Assertions](#267-use-appropriate-assertions)
  * [Output Style](#output-style)
    * [268. Learn to Use sprintf](#268-learn-to-use-sprintf)
    * [269. Learn to Use Tex](#269-learn-to-use-tex)
  * [Tests](#tests)
    * [270. Write at Least One Test for Every Function or Method](#270-write-at-least-one-test-for-every-function-or-method)
    * [271. Write Small Tests](#271-write-small-tests)
    * [272. Write Uncoupled Tests](#272-write-uncoupled-tests)
    * [273. Write Tests with Boolean Outputs](#273-write-tests-with-boolean-outputs)
    * [274. Test for Expected Exceptions](#274-test-for-expected-exceptions)
    * [275. Write Tests You Can Automate](#275-write-tests-you-can-automate)
    * [276. Use Related Names in the Function and the Test Code](#276-use-related-names-in-the-function-and-the-test-code)
    * [277. Identify Test Files by Name](#277-identify-test-files-by-name)
    * [278. Develop Test Patterns](#278-develop-test-patterns)
    * [279. Consider Tests for External Software](#279-consider-tests-for-external-software)
  * [Data Files](#data-files)
    * [280. Make Use of mat Files](#280-make-use-of-mat-files)
    * [281. Follow Database Conventions](#281-follow-database-conventions)
    * [282. Follow the MATLAB Convention for Data Array Orientation](#282-follow-the-matlab-convention-for-data-array-orientation)
  * [Programming Summary](#programming-summary)

<!-- tocstop -->


## General

### 135. Avoid Cryptic Code
There is a tendency among some MATLAB programmers to write code that is terse and even obscure.  
Perhaps they are inspired by Shakespeare’s line: “Brevity is the soul of wit.” Writing overly compact code can be a way to explore the fea tures of the language.  
However, in almost every circumstance, clarity should be the goal.  
Do not confuse writing MATLAB code with cryptography.  

Write code that is clear and readable by yourself and others.  
The way you put the program together is as important as what it does.  
Clear code is more likely to do what it is intended to do.  
Code that is difficult to understand and describe will also be difficult to write correctly, test, and maintain.  

### 136. Avoid Off-By-One Mistakes
Off-by-one errors are all too common at variable boundary values.  
For example, interpolation code for an NTSC video frame might include the incorrect  
``` matlab  
0:480  
```  
Because an NTSC frame has 480 lines, this should be  
``` matlab  
1:480  
```  
Or  
``` matlab  
0:479  
```  
or even better  
```matlab  
nLines = 480;  
1:nLines  
```  

### 137. Attend to NaN Results
If NaN is the result of a computation, then MATLAB by default does not issue an error or warning.  
You may want to issue your own.  
Write message identifiers so that these errors or warnings can be easily recognized.  

### 138. Consider Using isfinite
Some computations produce Inf rather than NaN.  
If Inf will lead to issues with your code, then it may be best to screen for both results using isfinite rather than just isnan.  

### 139. Use Programming Patterns or Idioms
See how others have dealt with the task.  
Most programming patterns have evolved from actual use, so they tend to be reliable and accurate.  
The best patterns are also well written and clear.  
Expect, however, that you will need to adapt a pattern to your specific use.  

If the function you are writing has an interface similar to a standard MATLAB function or to one of your own functions, then its input and output arguments should be in the same format and order.  
Using familiar arguments in familiar order increases usability and readability.  
For example, if a function is similar to the minimization function fminsearch, then it should have similar input arguments in similar order: function handle, starting location, and options structure of optimization parameters.  

If a function you are writing has similar functionality to a standard MATLAB function or to one of your own functions, then consider using the same code layout and organization.  
For example, many functions that compute scalars from array columns can be written in similar ways to support expected direction arguments and defaults.  

## Variables and Constants
A variable is a named reference whose value can be defined or changed in the code.  
A constant is a named reference whose value should not be changed after it is assigned.  
Many of the style considerations for variables also apply to constants.  

### 140. Do Not Reuse Variable Names Unless Required by Memory Limitation
Enhance readability by ensuring all entities or concepts are represented uniquely.  
Reduce the chance of error from a misunderstood or no longer current definition of a variable.  
Also avoid changing the class of an existing variable; instead, improve readability and performance by using a new variable.  

### 141. Beware of Mistyping Variable Names
Because MATLAB does not require variables to be declared, it is possible to unintentionally introduce a new variable by mistyping.  
Be particularly careful to avoid inconsistent capitalization in variable names.  
It is difficult to notice at a glance the difference between videoFrame and videoframe or Points and points.  
For example, here is a code snippet with inconsistent capitalization:  
```matlab  
function points = dosomething(x, y)  
points = zeros(length(x), 2);  
:  
for i = 1:nPoints  
    Points(i) = [x(i) y(i)];  
end  
```  
In this example, the elements of the output variable points will always be zero because the variable name in the loop is mistyped as Points.  
In some cases of code like this, there may be no M-Lint error or warning, but the variable will not have the expected value.  


### 142. Minimize the Use of Literal Numbers in Statements
Use named constants or variables instead of literal (hard coded) numbers.  
If a number does not have an obvious mean ing by itself, then the reader is not likely to understand its significance.  
Readability is enhanced by introducing a named constant or variable instead.  

Named variables are also more maintainable.  
Almost all num bers in code are subject to possible change.  
Changing the value of a named value is easier than finding and changing the relevant occurrences of a literal number in a file.  
Replace  
```matlab  
for i = 1:640,  
```  
with  
```matlab  
nColumns = 640;  
for jColumn = 1:nColumns  
```  
If the number of columns in the example is also used within the for loop, then there is a maintenance issue when a literal is used.  
If the number of columns is changed, then all instances of the literal 640 would need to be located and changed.  

### 143. Write Floating Point Values with a Digit Before the Decimal Point
This practice adheres to mathematical conventions for syntax.  
Also, 0.5 is more readable than .5; that is, it is not as likely to be read as the integer 5 or some other incorrect value.  
Replace  
```matlab  
THRESHOLD =.5;  
```  
With  
```matlab  
THRESHOLD = 0.5;  
```  


### 144. Avoid Showing Excessive Decimal Places
Computers can produce values with a large number of decimal places, even when the underlying situation justifies only a few.  
Including an excessive number of decimal places can give a false sense of precision.  
Long numbers with many digits are also difficult to visually scan.  
There can easily be a mistake in an important digit that could be missed in the clutter of unimportant digits.  


### 145. Avoid Mixing Units within a Program
In almost all cases, the variables and constants should have units that are either all SI (metric) or all U.S.  
Customary System.  
Avoid computations with mixed units unless they are simple conversions.  
Mixing MKS and CGS representations may be common in some domains.  
In these contexts, append a units suffix to any ambiguous variable name.  

### 146. Use Caution with Floating Point Comparisons
The necessarily finite binary representation of real numbers in a computer can cause trouble, particularly in testing for equality, as in this example.  
These values work as expected:  
``` matlab  
shortSide = 3;  
longSide = 5;  
otherSide = 4;  
longSide^2 == (shortSide^2 + otherSide^2)  
ans =  
1  
```  
but these do not:  
``` matlab  
scaleFactor = 0.01;  
(scaleFactor*longSide)^2 == ...  
((scaleFactor*shortSide)^2 + ...
    (scaleFactor*otherSide)^2)  
ans =  
0  
```  
A better approach is to test for a small difference:  
```matlab  
small = eps*shortSide;  
thisLongSide = scaleFactor*longSide;  
thisShortSide = scaleFactor*shortSide;  
thisOtherSide = scaleFactor*otherSide;  
thisLongSide^2 - (thisShortSide^2 + ...  
    thisOtherSide^2) < small  
ans =  
1  
```  

### 147. Limit Boolean Variable Values to True or False
Boolean variables should assume only the logical values true or false.  
Avoid using character strings like yes/no or on/off.  
If desired, modify the variable name to include the positive form of one of these terms.  
Do not use true or false for the values of variables that are not Boolean.  
Replace  
```  
safety = ' on'  
```  
with  
```  
safetyIsOn = true  
```  

### 148. Do Not Assume Array Size
Array sizes can change unexpectedly.  
Use end for indexing when possible.  
Replace  
```matlab  
nData = 10;  
data(nData-3:nData)  
```  
with  
```matlab  
data(end-3:end)  
```  
because the first two statements might be separated by code that at some point changes the size of the array data so that nData is no longer its length.  


### 149. Use Appropriate Numerical Class Conversions
Be aware of how numerical data are converted to a different class.  
Usually, numerical type conversions should be done by explicit assignment rather than by promotion.  
This makes it clear to the reader what is going on and that the programmer is aware of what he or she is doing.  
If the variable alpha is uint8, then replace the promotion  
```matlab  
b = 1.0*alpha;  
```  
with an assignment  
```matlab  
b = double(alpha);  
```  

### 150. Minimize the Use of Global Variables
The use of global variables makes software more difficult to read and understand.  
Because code anywhere in the software can change the value of the variable at any time, understanding the use of the global variable may entail understanding a large portion of the program.  

Clarity and maintainability of functions benefit from explicit argument passing rather than use of global variables.  
In fact, the use of global variables makes it more difficult to isolate units of code for purposes of unit testing, thus global variables can directly contribute to lowering the quality of the code.  

Some use of global variables can be replaced with the cleaner persistent declaration (within a function).  
The use of per sistent variables has another advantage in that the clear com mand removes global but not persistent variables.  

You can also use setappdata and getappdata to work with variables that have global availability:  
```matlab  
setappdata(SharedHandle, ' thetaDegrees' , 90)  
thetaDegrees = getappdata(SharedHandle, ' thetaDegrees' )  
```  
An alternative, and better, strategy is to replace the global variable with a function, as in this prototype:  
```matlab  
function out = globalproxy(in)  
persistent inside  
if nargin>0  
    inside = in;  
end  
out = inside;  
```  
In this case, there is a relatively clear distinction in the code between using the variable (no input argument) and defining it (an input argument).  

### 151. Minimize the Use of Global Constants
It can be convenient to use a constant that is defined once and used in multiple locations.  
This effect can be achieved by declaring the constant as global, but there is a price to pay.  
You must run the code that defines the constant before you can use it.  
Because the location of this code may not be obvious, you can also inadvertently and inconsistently define the constant in more than one location.  

MATLAB does not have true constants.  
They are really variables that are, or should be, resistant to change.  
There are several strategies for working with constants that are used in more than one code module.  

The recommended practice is to define constants that will be used in more than one module as functions.  
This reduces the likelihood of unintentional redefinition.  
Also, the constant name can be easily used in an expression.  
Using a function to define a constant is a common MATLAB practice.  
Use the standard convention for naming this function.  
The function definition would look like  

```matlab  
function value = twopi  
value = 2.0*pi;  
```  
and the usage would be  
```matlab  
circumference = twopi*radius;  
```  
If execution speed is an issue, then you can use an anonymous Function  
```matlab  
circumference = @twopi*radius;  
```  
or make a local copy  
```matlab  
twoPiConstant = twopi;  
circumference = twoPiConstant*radius;  
```  
You could instead put constant definitions in a structure, but this practice is not common:  
```matlab  
constants.twoPi = 2.0*pi;  
```  
with usage  
```matlab  
circumference = constants.twoPi*radius;  
```  
You could use a property of an object as a constant.  
If you do not define a method that changes the property, then you have a true constant.  
However, it is best to access this prop erty through a getter method rather than direct access, which makes its usage a bit cumbersome:  
```matlab  
circumference = getTwoPi(C)*radius;  
```  
or  
```matlab  
circumference = C.getTwoPi*radius;  
```  


### 152. Define Local Constants Only Once
Make it clear where the constants are defined in a module, and discourage unintentional redefinition.  
If a constant is used at only one location in a file, then define it just before it is used.  
Otherwise, define it near the top of the file.  

### 153. Do Not Declare Unrelated Variables in a Single Line
You can make scanning for variable names easier by grouping them.  
Replace  
```matlab  
persistent alpha, beta, triangle, square   
```  
with  
```matlab  
persistent alpha, beta  
persistent triangle, square  
````  

## Character Strings
> MATLAB is flexible in working with strings, but it can be slow.  
This is one of the few cases where considering speed early in the coding process is worthwhile.  

### 154. Consider Using strcmpi
Often we want to ignore variations in capitalization when comparing strings.  
Using ```strcmpi``` is better than making two or more comparisons.  
Replace  

```matlab  
strcmp(reply, ' no' ) | strcmp(reply, ' No' )  
```  

with  

```matlab  
strcmpi(reply, ' no' )  
```  
Switch/case constructs do not support case-insensitive com parisons using strcmpi, but you can use a cell array:  

```matlab  
switch reply  
case {' no' , ' No' }  
```  

### 155. Use lower or upper When You Cannot Use strcmpi
Use strcmpi  
Most programmers use lowercase for comparison.  
This avoids two or more comparisons:  
```matlab  
switch lower(reply)  
    case ' no'  
```  

### 156. Use isempty
The clearest way to test whether a character string is empty is to use the isempty function.  
Replace  
```  
isequal(a, '' ) or isequal(a, [])  
```  
with the easier-to-scan and type correctly  
```  
isempty(a)  
```  
The expressions  
```  
a=='' or a==[]  
```  
are not useful because they always return [] .  
Although it will work, avoid checking whether a string variable is empty by comparing its length to zero.  
The purpose of this statement is not as clear as simple use of isempty.  
Avoid   
```  
length(a)==0  
```

### 157. Use fullfile
The fullfile function generates a path to a file that is system independent and flexible in dealing with embedded file separators.  
Replace  
```matlab  
thisFile = [disk, ' \' , directory, ' \' , filename];  
```  
with the more portable and easier-to-read  
```matlab  
thisFile = fullfile(disk, directory, filename);  
```

### 158. Compute with Numbers for Speed
Computing with index numbers can be much faster than working directly with character strings.  
In particular, working with date numbers is usually faster than working with date strings.  
If you write clearly, with good variable naming, this usage need not reduce readability.  

### 159. Consider Using Character Arrays for Speed
The use of cell arrays for character strings can be easier to read, but working with character arrays can be faster.  
Try to limit this usage to cases that do not significantly reduce readability.  

### 160. Consider Using unique
Take advantage of duplicate values in a string variable.  
Use the three output argument feature of unique:

```matlab  
[uniqueList, listIndex, uniqueListIndex] = ...  
unique(list);  
```  
Using these optional output indices in subsequent computations can often be faster and more elegant than recomputing equivalent indices in additional statements.  


## Structures

### 161. Use Structures for Associated Data
Structures provide an easy way to keep associated data together.  
For example, you might have a set of gross domestic product (GDP) data by country and year.  
Instead of using variables GDP, country, and year, you would use a structure GDP with fieldnames value, country, and year.  
Using a structure can help keep the sizes of the fields consistent and also supports writing functions with fewer input arguments.  

### 162. Use Structures for Metadata
Structures provide an easy way to keep related data together.  
For example, the results of an experiment could be kept in a structure so that you do not have to keep track of each relevant variable or parameter.  
This is particularly convenient if the results of several similar experiments are stored in files in a single directory:  

```matlab
Flight10702 =
    airSpeed: [1x10000 double]
    airSpeedUnit: ' MPH'
    altitude: [1x10000 double]
    altitudeUnit: ' feet'
    timeStep: 1
    timeStepUnit: ' sec'
    equipment: ' A7'
    pilot: ' John Glenn'
    description: ' practice'
    eventTime: [20x1 double]
    eventLog: {20x1 cell }
```

### 163. Organize a Structure Based on How It Will be Accessed
A structure is likely to be read more often than written, so organizing it for simple read access will produce cleaner code overall.  
Consider a structure with data for multiple flights.  
If the most frequent access is one flight at a time, then organize the structure as  

```matlab  
Flight(nFlights).airspeed(nSamples)  
```  
If the most frequent access is all flights for one field at a time,  
then use a structure organized as  

```matlab  
Flight.airspeed(nFlights, nSamples)  
```  

### 164. Put Structure Fields in a Helpful Order
MATLAB does not consider field order for functions like isequal, but using alphabetical ordering can make it easier for a reader to find a field in a structure display.  
You can use the orderfields function to provide a structure with fields in alphabetical order.  

Some users prefer to order the data fields first, followed by the metadata fields.  
The order of the fields does not affect the format or speed of use. It is only a factor in readability.  

### 165. Be Careful with Fieldnames
When you set the value of a structure field, MATLAB replaces the existing value if the field already exists or creates a new field if it does not.  
This can lead to unexpected results if the fieldnames are not consistent, for example, when a structure has field  
```matlab  
Acme.source = ' CNN' ;  
```  
that you intend to update, but you type  
```matlab  
Acme.sourceName = ' Bloomberg' ;  
```  
The structure will now have two fields.  
A less error-prone version would be  
```matlab  
if isfield(' Acme' , ' sourceName' )  
    Acme.sourceName = ' Bloomberg' ;  
else  
    error(' fieldset:name' , ' Use a valid fieldname. ' )  
end  
```  
This code snippet could also be generalized and written as a function for safer and more convenient use.  

Another way to avoid this type of problem is to use an object rather than a structure.  
One of the benefits of object-oriented programming is resistance to unintentional field creation.  

## Cell Arrays
> Cell arrays are very flexible and can hold any type of array.  
This flexibility can, however, lead to some confusion.  
The most important uses for cell arrays are for character strings, function arguments, and nonrectangular numerical arrays.  

### 166. Consider Using Cell Arrays for Strings
Cell arrays of character strings can be more readable than char acter arrays, particularly if the strings have different lengths.  
Indexing cell arrays is usually more direct than indexing char acter arrays.  
You can count spaces to write  
```matlab  
greetings = [' Hi ' ; ' World' ]  
```  
or use the function  
```matlab  
greetings = char(' Hi' , ' World' )  
```  
However, in both cases, the indexing would be in the form  
```matlab  
greetings(iLine,:)  
```  
With a cell array, you can write  
```matlab  
greetings = {' Hi' ; ' World' }  
```  
and index with the more direct  
```matlab  
greetings{iLine}  
```  

### 167. Look Out for Cells within Cells
It can be easy to write  
```matlab  
greetings {1} = {' Hi' };  
```  
when the desired statement is  
```matlab  
greetings {1} = ' Hi' ;  
```  
or  
```matlab  
Greetings(1) = {' Hi' };  
```  
The first statement will require unnecessarily complicated syntax for correct access of the character string.  


### 168. Consider Using Cell Arrays for Ragged Arrays
Most arrays in MATLAB must have uniform numbers of rows and columns.  
If the elements in your data set do not have this rectangular shape, then you have two choices.  
You can use a padded array or a cell array.  

If the data have a natural alignment such as uniformly spaced samples with some missing values, then use a NaN padded array.  

If the data do not have a natural alignment, then use of a padded array may be misleading.  
In this case, use a cell array.  
Using a cell array will typically be slower than a NaN padded array, but you can use cell array functions for better performance.  


## Expressions
> An expression consists of one or more operators and one or more operands or functions.  
Expressions are the building blocks of statements.  

### 169. Write Short Expressions
To enhance readability, try to use less than seven elements in an expression.  
Look for opportunities to use explanatory intermediate variables.  
An expression like  
```matlab  
isnan(thisValue)&(thisValue>=initialThreshold)  
&∼ ismember(value,valueArray)  
```  
should be replaced by something like  
```matlab  
valueIsPresent = ∼ isnan(thisValue);  
valueIsValid = thisValue >= initialThreshold;  
valueIsNew = ∼ ismember(thisValue, valueArray);  
(valueIsPresent && valueIsValid && valueIsNew)  
```  
The latter version makes it easier to visually parse the overall expression into meaningful subexpressions and to see that the subexpressions are correct.  

### 170. Put Numbers Before the Multiplication Operator
When a variable is multiplied by an explicit number, put the number before the operator and the variable name after.  
Because you should minimize the use of numbers within the body of code, this rule applies mostly when defining a variable that replaces a literal number.  
Replace  
```matlab  
twoPi = pi*2;  
```  
with  
```matlab  
twoPi = 2*pi;  
```  
The reverse order is appropriate when the number is a numer ator of a fraction:  
```matlab  
fudgeFactor = peak*2/3;  
```  

### 171. Make the Denominator Clear
The scalar expressions  
```matlab  
a/b*c  
```  
and  
```matlab  
a*c/b  
```  
produce the same result, but the second form can be under stood more quickly.  
Similarly,  
```matlab  
a/b*c/d  
```  
is not as clear as  
```matlab  
(a*c)/(b*d)  
```  

### 172. Use Parentheses
The MATLAB language has documented rules for opera tor precedence, but who wants to remember the details? If there might be any doubt, then use parentheses to clarify expressions.  
They are particularly helpful for extended logical expressions.  
The expression  
```matlab  
a == b&c  
```  
is evaluated as  
```matlab  
(a == b) & c  
```  
Although  
```matlab  
a = = ( b & c )  
```  
may be the intent.  
The expression  
```matlab  
a*b/c*d  
```  
is evaluated as  
```matlab  
((a*b)/c)*d  
```  
The intent may have been  
```matlab  
(a*b)/(c*d)  
```  
If not, it would be better to write  
```matlab  
a*b*d/c  
```  

### 173. Use a Clear Form for Relational Expressions
Relational expressions, including negations, can be difficult to understand.  
Strive to use positive expressions.  
You may be able to write a positive form by using the complementary operator.  
Replace  
```matlab  
∼ (iSample<maxSamples)  
```  
with  
```matlab  
iSample>=maxSamples  
```  

### 174. Use && or || by Default for Scalar Operands
Use && or || by default, and put expressions in the best order for short circuiting to avoid errors, warnings, or unnecessary computation.  
Use  
```matlab  
exist(a) && a>0  
```  
or  
```matlab  
∼isempty(a) && a>0  
```  
When the operands are not scalars, you must use & or | instead of the short circuiting operators.  

## Statements
> A statement is a line or construct of executable code.  
Statements typically consist of one or more expressions.  
Most functions are sequences of statements.  

### 175. Write Short Statements
Statements are easier to read when they are short.  
In par ticular, try to avoid unnecessary line wraps by introducing intermediate variables and short expressions  

### 176. Avoid Use of eval When Possible
Statements that involve eval tend to be harder to write correctly, more difficult to read, and slower to execute than alter natives.  
Use of eval does not support thorough checking by M-Lint.  
Statements that use eval can usually be improved by changing from commands to functions, or by using dynamic field references for structures with setfield and getfield.  
Reduce use of eval by using the function form rather than the command form.  
The command form is more limited than the function form in working with arguments.  
The command form often requires a more cryptic statement than the function form.  
Replace  
```matlab  
eval([' load August' int2str(index) ' .mat' ])  
```  
with  
```matlab  
load([' August' , int2str(index) ' .mat' ]);  
```  
Also minimize the use of evalin. It should not be used to  
secretly pass values into functions. Use arguments instead.  

## Loops
> Historically, MATLAB programmers have preferred to use vectorization instead of for loops to achieve better performance.  
Recent releases have brought considerable improvements in the execution speed of for loops, and they are becoming more common.  
Programmers with backgrounds in other languages will typically find code written with for loops more readable than code written with complicated vectorization.  

### 177. Initialize Loop Variables Immediately Before the Loop
Initializing or preallocating the variables that are updated in a loop improves loop speed and helps prevent bogus values if the loop does not execute for all desired indices.  
Placing the initialization just before the loop makes it easier to see that the variables are initialized.  
This practice also makes it easier to copy the relevant code for use elsewhere.  
If a loop variable is not a double, then assign its type when you initialize it:  
```matlab  
result = nan(nEntries,1);  
for index = 1:nEntries  
    result(index) = foo(index);  
end  
```    

### 178. Initialize Using nan or false Rather Than zeros
Now that nan is available as a function, use it.  
Because zero can be a valid result of many computations, incomplete element computation is easier to detect when the array is initialized to ```nan```:  
```matlab  
aloha = nan(nRows, nColumns);  
```  
If the variable is Boolean, then initialize it using false.  
This practice prevents subsequent MATLAB code from interpreting zero as an invalid matrix index:  
```matlab  
resultIsValid = false(nRows, nColumns);  
```  

### 179. Do Not Change the Loop Index Variable Inside a Loop
MATLAB captures the loop index variable for use in executing the loop.  
You can change the variable with the same name inside the loop, but the result may not be what you expect.  
In any case, changing the apparent value of the loop variable will confuse the reader.  

### 180. Minimize the Use of break in Loops
This keyword is often unnecessary and should only be used if the code proves to have higher readability than a structured alternative, and it is well tested.  
A loop containing break will have more than one output path.  
This can be confusing.  
In nested loops with break statements, it is not always obvious which statement will be executed next.  
Replace  
```matlab  
fid = fopen('fft.m' , 'r' );  
s = '' ;  
while ∼ feof(fid)  
    line = fgetl(fid);  
    if isempty(line), break, end  
    s = strvcat(s,line);  
end  
```  
with  
```matlab  
fid = fopen('fft.m' , 'r' );  
s = '' ;  
textLine = '*' ;  
while ∼feof(fid) && ∼isempty(textLine)  
    textLine = fgetl(fid);  
    s = strvcat(s,textLine);  
end   
```  

### 181. Minimize the Use of continue in Loops
This keyword is often unnecessary and should only be used if the code proves to have higher readability than a structured alternative.  
The following example reads a text file of unknown length:  
```matlab  
fid = fopen(' magic.m' , ' r' );  
count = 0;  
while ∼feof(fid)  
    line = fgetl(fid);  
    if isempty(line) | strncmp(line, ' %' ,1)  
        continue  
    end  
    count = count + 1;  
end  
```  

This code can easily be written without continue by changing the sense of the if statement expressions:  
```matlab  
fid = fopen(' magic.m' , ' r' );  
count = 0;  
while ∼ feof(fid)  
    textLine = fgetl(fid);  
    count = update(count, textLine);  
end  
fclose(fid)  
```

together with the function  
```matlab
function count = update(count, textLine)  
if ∼ isempty(textLine) && ∼ strncmp(textLine, ' %' ,1)  
    count = count + 1;  
end  
```  
This version also renames the variable line to avoid confusion with the function of the same name.  

### 182. Avoid Unnecessary Computation within Loops
Save execution time and make debugging easier by avoiding repeated computations that are not needed.  
Replace  
```matlab  
for iRow = 1:nRows  
    for jCol = 1:nColumns  
        term(iRow, jCol) = sum(x(iRow,:)) +  
        sum(x(:,jCol));  
    end  
end  
```  
with the cleaner and faster  
```matlab  
for iRow = 1:nRows  
    rowSum = sum(x(iRow,:));  
    for jCol = 1:nColumns  
        term(iRow, jCol) = rowSum +  
        sum(x(:,jCol));  
    end  
end  
```  

### 183. Be Careful of Infinite while Loops
Code blocks using while can loop indefinitely if the exit condition is not written well.  
For example, an equality test involving floating point numbers may never pass.  
This loop does not terminate:  
```matlab  
a = 30;  
b = 0.1;  
while a∼=0  
    a = a-b;  
end  
```  
This one does:  
```matlab  
a = 30;  
b = 0.1;  
while a>=0  
    a = a-b;  
end  
```  

### 184. Be Careful of Count Errors in while Loops
It is easy to write code like  
```matlab  
count = 1;  
value = 3;  
decrement = 1;  
while value>0  
    value = value-decrement;  
    count = count+1;  
end  
```  
This produces a count value of 4. Because the desired value is  
probably 3, the code should be  
```matlab  
count = 0;  
value = 3;  
decrement = 1;  
while value>0  
    value = value-decrement;  
    count = count+1;  
end  
```  

## Conditionals
> Conditional or selection constructs using if or switch establish blocks of statements that are always done together and in sequence.  
Good use of these constructs is very important for correctness and understandability.  

### 185. Avoid Complicated Conditional Expressions
Introduce intermediate logical variables to reduce complexity.  
By assigning logical variables to expressions, the program gets automatic documentation.  
The construction will be easier to read and debug.  
Replace  
```  
if (value>=lowLimit)&(value<=highLimit)& ...  
    ∼ismember(value, knownValues);  
    :  
end  
```  
with  
```  
isValid = (value>=lowLimit) && (value<=highLimit);  
isNew = ∼ismember(value, knownValues);  
if (isValid && isNew)  
    :  
end  
```  
### 186. In General, Include an else Statement with if
The else block provides an opportunity to deal with an alternative or unexpected value.  
Replace  
```matlab  
if iState<=50  
    disp(state(iState))  
end  
```  
with  
```matlab  
nStates = 50;  
if iState <= nStates  
    disp(state(iState))  
else  
    error(' Keep iState smaller than nStates+1. ' )  
end  
```  

### 187. Put the Normal Branch in the if Part
Put the normal branch of an if statement first unless placing the special case first makes the construct more easily under standable.  
This practice improves readability by preventing lengthy special cases from obscuring the normal path of exe cution.  
For example, code that reads a file might be clearer if the code block that reads the file is placed before the code block that is executed if the file is not successfully opened:  
```matlab  
fid = fopen(fileName);  
if (fid >= 0)  
    :  
else  
    :  
end  
```

### 188. Avoid Unnecessary if Constructs
You can often replace code such as  
```matlab  
if expression  
    value = true;  
else  
    value = false;  
end  
```  
with  
```matlab  
value = expression;  
```  

### 189. Use a Practical Order for elseif Conditions
When the selection construct has many choices, readability is improved if the choices are in some type of order.  
Typical ordering includes numerical order as in 0, 1, 2 or alphabetical order for character strings.  

### 190. Avoid Unnecessary elseif Blocks
A selection construct with apparent but unnecessary choices can confuse the reader.    
You can often clarify the construct by replacing literal numbers with named values.    
Replace    
```matlab    
if hours < 40    
    pay = regular(hours);    
elseif hours > 40    
    pay = overtime(hours);    
elseif hours == 40    
    pay = regular(hours)    
else    
    error(' Bad condition' )    
end    
```    
with    
```matlab    
normalHours = 40;    
if hours <= normalHours    
    pay = regular(hours);    
else    
    pay = overtime(hours);    
end    
```  

### 191. Avoid Unnecessary Levels of Nesting in Control Structures
Code within if or switch constructs can become messy if the cases are not well designed or if additional conditions are added to the original version.  
Reorganization can improve readability.  
Removal of duplicated code can also make it easier to maintain consistency while modifying.  
The confusing code  
```matlab  
if heated  
if usage < 500  
bill = 0.9*(2+0.1);  
else  
bill = 0.9*(5+0.2);  
end  
else  
if usage < 500  
bill = 0.95*(2+0.1);  
else  
bill = 0.95*(5+0.2);  
end  
end  
```  
can be rewritten more clearly as  
```matlab  
if heated  
    scale = 0.90;  
else  
    scale = 0.95;  
end  
if usage < 500  
    base = 0.2;  
    rate = 0.1;  
else  
    base = 5;  
    rate = 0.2;  
end  
bill = scale * (base+rate*usage);  
```  

### 192. Try to Simplify Nested if Constructs
Use of functions combined with conditions can reduce the need for nested if statements.
Replace
```matlab
if x <= y
if x <= z
smallest = x;
else
smallest = z;
end
else
if y <= z
smallest = y;
else
smallest = z;
end
end
```
with
```matlab
if x <= y
    smallest = min(x,z);
else
    smallest = min(y,z);    
end
```
or
```matlab
smallest = min([x, y, z]);
```

### 193. Avoid the Conditional Expression if 0
This expression is sometimes used to temporarily bypass a block of code.  
Do not use it; instead, use block comments.  
Do not release code containing if 0.  

### 194. Include otherwise with switch Statements
Leaving otherwise out is a common error, which can lead to unexpected results because none of the cases may be executed.  
Use a construct such as  
```matlab  
switch (condition)  
    case abc  
      :  
    case def  
      :  
    otherwise  
      :  
end   
```  

### 195. Consider Using a Cell Array to Simplify a switch Construct
You can often use a cell array to consolidate selections that can be handled with a single block of code. Replace  
```matlab  
switch lower(day)  
    case ' mon'  
        dayNo = 2;  
    case ' tue'  
        dayNo = 3;  
    otherwise  
        error(' Bad day' )  
end  
```  
with the more flexible  
```matlab  
allDays = {' mon' , ' tue' };  
index = strcmpi(day, allDays);  
if ∼empty(index)  
    dayNo = find(index);  
else  
    error(' Having a bad day' )  
end  
```  
or  
```matlab  
allDays = {' mon' , ' tue' };  
switch day  
    case allDays  
        index = strcmpi(day, allDays);  
        dayNo = find(index);  
    otherwise  
        error(' Having a bad day' )  
end  
```  
Unlike the first version, these latter versions can be compactly generalized by  
```matlab  
allDays = {' sun' , ' mon' , ' tue' , ' wed' , ' thu' , ' fri' , ' sat' };  
```

### 196. Use if When the Condition is Most Clearly Written as an Expression
The if construct executes statements when the if or elseif expression is true.  
These include explicit or implied logical or relational expressions.  
The if construct can be used for both inequality and equality.  
An example would be code to determine the location of a number as above, inside, or below the bounds of an interval, with all numbers as variables.  

### 197. Use switch When the Condition is Most Clearly Written as a Value
The switch construct only evaluates for equality.  
Use the switch construct when a single expression (the switch expres sion) is compared with a series of case values.  
Its best use is in comparing character strings or numerical variables.  

### 198. When Either if or switch Can Work, Use the More Readable One
There is possible overlap in the usages ofif and switch.  
Use the construct that provides cleaner, easier-to-read code.  

## Logical Functions

### 199. Use logical to Cast Variables
Use the function logical to cast variables that will be used for logical indexing.  
Some computations or functions produce results that consist of only one or zero values that could be used as indices.  
In some cases, MATLAB interprets a zero that is intended to be logical as an invalid numerical index.  
Use the logical function to avoid these problems. For example,  
```matlab  
>> A = [1 2; 3 4];  
>> A(logical(eye(2)))  
ans =  
14  
```  
but  
```matlab  
>> A(eye(2))  
??? Subscript indices must either be real positive integers or logicals.  
```  

### 200. Use true or false Functions and Values
Use the true or false function to define or predefine a logical variable:  
```matlab  
isValid = true(nRows, nColumns)  
```  
is faster and easier to read than  
```matlab  
isValid = logical(ones(nRows, nColumns))  
```  
Similarly, use true or false values such as while true rather than while 1 for an indeterminate while loop.  

### 201. In General Use isequal Rather Than ==
The major advantage of the isequal function is that it works with variables that have different sizes, which == does not.  
Both isequal and == work with variables that are the same size.  
The isequal function yields the single overall result of the comparison, which is usually the desired result.  
The == operator yields a result the same size as the variables.  
You could use all with == to produce an overall result, but using isequal is simpler.  

Replace  
```matlab  
[1 1] == [1 1 1]  
```  
which produces an error, with  
```matlab  
isequal([1 1], [1 1 1])  
```  
In general, replace  
```matlab  
[1 1 1]==[1 1 0]  
```  
which produces three values, with  
```matlab  
isequal([1 1 1], [1 1 0])  
```  
which produces one value.  
```  

## Vectorization

### 202. Be Thoughtful with Vectorization
Older versions of MATLAB had significant performance problems with code written in loops.  
Newer versions often provide equivalent, or even better, performance with loops as with vectorized code.  
This is especially true when the computed variables are preallocated and Just-In-Time acceleration can be applied to the code.  
Vectorization is also less capable with large data variables because of memory limit issues.  
Most MATLAB developers understand straightforward vectorization, but many of us bog down at the more arcane examples.  
Vectorization does have a good home in linear algebra applications.  
Even in those cases, it can benefit from explanatory comments for nonspecialists.  

### 203. Use repmat
Use repmat to replicate a subarray to construct a larger array, unless speed is a problem.
The old techniques
```matlab
B = A(:, ones(1:nColumns));
```
Or
```matlab
B = A*ones(1, nColumns);
```
are effective and may be faster than repmat, but they are more difficult to read and less flexible than
```matlab
B = repmat(A, 1, nColumns);
```

## Functions
> Structuring code, both among and within files, is essential to making it understandable, usable, and maintainable.  
Thoughtful partitioning and organizing increase the value of the code while and after it is developed.  
The use of functions is a key element of structuring procedural code.  

### 204. Modularize
Decompose major tasks into subtasks.  
The best way to write a big program is to assemble it from well-designed small pieces (usually functions).  
This approach enhances readability, understanding, and testing by reducing the amount of text that must be read to see what the code is doing.  
Small well-designed functions are also more likely to be usable in other applications.  
Small focused functions are easier to test and modify than complicated ones.  

Code longer than two editor screens is a candidate for partitioning into functions or subfunctions.  
Keeping related information together on the same editor screen lets you see certain types of problems and fix them right away.  
Displaying an entire logical unit on one screen also makes it easier for the reader to mentally organize and understand the code.  

### 205. Write Code as Functions When Possible
Functions modularize computation by using internal variables that are not part of the base workspace.  
They tend to be cleaner, more flexible, and better designed than scripts.  
The main role of scripts is in development because they provide direct visibility of variable dimensions, types, and values.  

### 206. Write Simple Functions
Write functions that do one thing and do it well.  
Try to write functions simple enough to describe in no more than two sen tences.  
The goal is to achieve capability without complexity.  
Avoid multiblade utility functions that require complicated interfaces.  
If a combination of multiple tasks is appropriate, then the individual tasks should be coded as helper functions or subfunctions.  

### 207. Design for Loose Coupling
Every function should hide something; that is, it should per form a task that is not intertwined with other code.  
A function has loose coupling if it interacts with other code only through input and output arguments.  
Using well-defined interfaces is key to achieving reliable, understandable, and adaptable code.  

Tight coupling also leads to unit test problems because the module under test requires additional external context.  
It also reduces extensibility and reusability.  
Furthermore, tight cou pling allows error propagation and can lead to a chain of failures.  

### 208. Use Subfunctions Appropriately
A function used by only one other function can be packaged as a subfunction in the same file.  
Keeping the code in one file can make it easier to understand and maintain.  

MATLAB allows subfunction access from outside the main function file using a function handle.  
External access to subfunctions is a sign of undesirable tight coupling.  
If external access is required, then convert the subfunctions to functions unless a single file is required for portability.  

Aim for loose coupling between functions and their subfunctions.  
A subfunction should not have to change just because function input arguments change.  
The function input arguments should not have to change if you change the subfunction implementation.  

### 209. Hide Implementation Details
When possible, design the function so that the internal implementation of its task can be changed without changing the interface arguments.  
That way changes to the function will not ripple out into other code.  

### 210. Write for High Cohesion
In a function with high cohesion, most of the code is related to one task or a small number of related tasks.  
Low cohesion leads to unnecessary complexity, loss of readability, and unlikely reusability.  

An example of low cohesion would be a function that com putes many different statistical parameters from a data set such as mean, median, mode, standard deviation, shape parame ters, quantiles, max, min, and frequency.  
It is better to split this functionality among several routines, with each comput ing only one or a few related parameters.  

### 211. Use Existing Functions
Developing a new function that is correct, readable, and rea sonably flexible can be a significant task.  
Using an existing function that provides some or all required functionality is likely to be more effective.  
You can also use existing functions as prototypes or starting points for your code.  

### 212. Eliminate Overlapping Functions
If you find functions that perform similar tasks with similar interfaces, then consider combining them into a single func tion.  
If appropriate, this function can have subfunctions to capture code for detailed differences in the tasks.  

### 213. Provide Some Generality in Functions
Functions should usually be flexible enough to accept appro priate input variables as scalars, vectors, and arrays of two dimensions when these are likely to be used.  
Functions with input arguments that commonly have more than one repre sentation should work with all of them.  
For example, image processing functions should at least work with uint8 and double input variables.  

### 214. Write a Function At One Level of Abstraction
Your code is more readable and more likely to be reusable when you program a function at a consistent level of abstraction.  
Simple abstractions allow easily digested changes in imple mentation.  
They can also help clarify the role and organization of the code.  

Mixed levels often occur in selection constructs where some paths call other functions and some contain detailed statements.  
An example of code with more than one level of abstraction is   
```matlab  
function y = consolidate(x, action)  
switch action  
    case 'sum'  
        y = sum(x);  
    case 'first'  
        nRows = size(x,1);  
    if nRows==1  
        y = x(1);  
    else  
        y = x(1,:)  
    end  
end  
```  
If you make first a function, you can get more readable  
code at a single level of abstraction:  
```matlab  
function y = consolidate(x, action)  
switch action  
    case 'sum'  
        y = sum(x);  
    case 'first'  
        y = first(x);  
end  
```  

### 215. Write Convenience Functions
If you code even simple tasks in functions, then you can assign them function handles and treat them consistently with related functions.  
A simple example of a convenience function compatible with a basic form of standard functions like sum or mean is  

```matlab  
function y = first(x)  
y = x(1,:)  
```  
You can then make a function handle to use the same way as standard function handles.  
```matlab  
hFirst = @first;  
```  
Using this function, you can rewrite consolidate as function y = consolidate(x, fHandle)  
```matlab  
y = fHandle(x);  
```  

### 216. Make Interaction Clear
A function interacts with other code through input and out put arguments and global variables.  
The use of arguments is almost always clearer and better than the use of global vari ables   

### 217. Name All Input Arguments
Avoid literal numbers when calling functions.  
The meaning of a number is usually less clear than the meaning of a named variable.  
Changing code that uses named variables is easier than changing code that has literal numbers. Replace  
```matlab  
foo(alpha, 2)  
```  
with  
```matlab  
foo(alpha, flavor)  
```  
A literal number is acceptable in conventional uses such as a dimension argument.  

### 218. Write Boolean Functions to Return true or false
Avoid other return values that might confuse the user or maintainer, such as yes/ no or on/off.  

### 219. Make Logical Output and Function Name Consistent
The output of a logical function should be true if the function name implies true when the condition is met. For the function  
```matlab  
valueIsInRange = isinrange(value)  
```  
the output variable valueIsInRange should be true when the value is in range.  

### 220. Minimize Input Flag Arguments
The common practice of using 0 or 1 as an input flag argument is concise but problematic.  
It means that the function does more than one thing.  
It is not obvious which value of the argument selects which option.  
It is not obvious which option is the default.  
Some better alternatives are as follows: Write two functions.  
Use a parameter/value pair.  
Use a function handle argument.  

For example, the mad function in the Statistics Toolbox computes either the mean or the median absolute deviation using syntax  
```matlab  
mad(x)  
mad(x,0)  
mad(x,1)  
```  
The computed function output would be easier to understand  
Using  
```matlab  
medianabsdeviation(x)  
```  
and  
```matlab  
meanabsdeviation(x)  
```  
or  
```matlab  
mad(x, 'estimator', 'median' )  
```  
or  
```matlab  
mad(x, @median)  
```

### 221. Write Arguments in Useful Order
Consider the order of input and output function arguments, especially for optional arguments.  
If the input argument a is specified more often than b, or b is optional, then write the function as ```foo(a,b)``` rather than ```foo(b,a)``` .  
If the output argument c is used more often than d or is needed to compute d, then write the function as ```[c, d] = foo``` rather than ```[d, c] = foo```.  

### 222. Use Lazy Evaluation
Avoid computing unneeded variables.  
Secondary outputs should only be computed if the user calls the function with arguments for them, unless the secondary outputs are computed as a natural part of the computing the primary output.  

Use nargout to determine whether secondary outputs must be computed.  
```matlab  
function [c, d] = foo(a)  
% Compute c.  
if nargout>1  
    % Compute d.  
    ...  
end  
```  

### 223. Make Input and Output Arrays Consistent
Functions that produce output arrays of the same type and size as the input arrays should usually arrange those output arrays in the same orientation as the input.  
Do not turn columns into rows casually.  

### 224. Use a Structure to Replace a Long List of Function Arguments
Usability of a function decreases as the number of arguments grows, especially when some arguments are optional.  
The arguments must be provided in order, and this order is often not obvious.  
The roles of the arguments may be unclear.  
Consider using structures whenever the number of arguments exceeds four.  

Structures can allow a change to the number of values passed to or from the function that is compatible with existing external code, particularly other functions.  
For example one function may use fields a, b, c, of a structure, whereas another function uses fields a, b, d.  
Using a structure may be easier than keeping track of individual variables, especially if a function changes to use additional variables.  

### 225. Consider an Options Structure
Some tasks, such as optimization, require a number of operational parameters.  
Using an options structure as an input argument can simplify the function call.  
A structure is easier to parse than a string of parameter-value pairs.  
It can also provide a convenient way to define modifiable default parameters.  
You can establish your preferred values once and use them in many places.  
If the same options are used for more than one function, then it is easier to keep them consistent if they are in a structure.  

Consider writing a function that establishes the structure with default values that can be modified.  
You can also use it to constrain parameter values that are input as arguments to be within validity limits.  

### 226. Consider varargin and varargout
When a function accepts an arbitrary number of inputs, use varargin.  
It is often better to use the inputParser object than to write your own code to handle a variable number of inputs.  
The inputParser is particularly convenient to deal with parameter-value pairs.  
When a function accepts an arbitrary number of outputs, use varargout.  
Note that the output arguments will be in a cell array.  

### 227. Use Parameter-Value Pairs for Optional, Unordered Input Arguments
The input arguments of standard functions are listed in order.  
This can be inconvenient when some arguments are unneeded based on preceding arguments or when the user may not remember argument order.  
Parameter-value pairs make it eas ier to deal with these situations.  
With an appropriate function definition, the order-dependent usage  
```matlab  
pattern = order(customer, cSize, color, form)  
```  
can be replaced with an order-independent version, which can be used as  
```matlab  
pattern = order(customer, ' cSize' , ' large' ,  
' color' , ' red' , ' form' , ' diagonal' );  
```  
or  
```matlab  
pattern = order(customer, ' cSize' , ' large' ,  
' form' , ' diagonal' , ' color' , ' red' );  
```  

### 228. In General, Use Caller Variable Names Consistent with the Function Argument Names
When calling the function  
```matlab  
function foo(alpha, beta)  
```  
use  
```matlab  
foo(alpha, beta)  
```  
or  
```matlab  
foo(thisAlpha, thisBeta)  
```  
as long as the variable names are meaningful in both the function and calling code contexts.  
This practice makes it easier to quickly scan the code and match the variables to the arguments.  

### 229. Define Imports Where They are Easy to Find
It can be convenient to import functions that are in names pace packages.  
Place import statements in a block near the beginning of the function.  

### 230. Use Anonymous Functions Rather Than Inline Functions
These are both ways to create and use very short functions without making them subfunctions or stand-alone functions.  
Anonymous functions generate function handles rather than function definitions.  
They are more flexible than inline func tions and more likely to be supported in future releases.  
If the anonymous function definition requires a line wrap or is too cryptic, then it should be written as a function, subfunction, or nested function instead.  

### 231. Use Function Handles
Use function handles rather than inline functions or function name strings in functions that use input arguments referring to functions (“function functions”) when you can.  
Function handles have the advantage that they can be used outside the usual scope and more directly than function name strings.  
Replace code that would use  
```matlab  
foo(x, y, 'compare' )  
```  
with code that would use  
```matlab  
foo(x, y, @compare)  
```

### 232. Avoid Including Hidden Side Effects
Hidden side effects confuse the reader about what the function will actually do.  
Side effects that only sometimes occur are even more problematic.  
An example of a function with a nonobvious side effect is hist.  
It returns the histogram as a variable if there is an output argument.  
If there is not an output argument, then hist makes a plot as a side effect.  

### 233. Refactor
Refactoring means changing the internals of an existing code module for better design without changing its external behavior.  
Refactoring increases adaptability by decreasing complexity.  
Many of us write functions during development that become too long and include redundancies.  
Refactor this code.  
__When refactoring you would typically__  
* Replace an explicit number with a named constant or variable.  
* Replace a poor identifier name with a better one.  
* Extract a block of code and convert it to a function.  
* Replace duplicate code with a function.  
* Remove misleading comments. Best practices for refactoring include  
* Make only one change at a time.  
* Run tests after each change.  
* Use version control.  

## Input and Output

### 234. Write Input Functions
Data file input format and content are often messy and subject to change.  
Localizing the code that reads input improves maintainability.  
Avoid mixing input code with computation other than preprocessing code in a single function.  
Mixed purpose functions are unlikely to have clean, stable interfaces.  
Consider storing input data in a mat file with named variables for multiple processing accesses.  

An easy way to prototype an input function is to use the Desktop Import Data feature.  
The code generated by this feature can serve as the base for development.  

### 235. Provide Some Input Validity Checking
You can improve the reliability of many functions by checking the type and range of numerical input, as well as the validity of character strings.  
This is especially important for more general-purpose functions.  

Invalid input can easily lead to an error that stops execution.  
Validity checking allows more graceful error handling.  
The appropriate amount of validity checking is a judgment call, depending on expected use.  
The inputParser and the validatesttributes and validatestring functions are very helpful for validity checking.  

There is an old saying in software development: “Garbage in, garbage out.” This attitude and practice is no longer accept able.  
If the input is not as expected, then produce an exception, error, or warning as appropriate.  
If execution should continue, then set the output variables to a testable value such as NaN, blank, or empty.  

### 236. Expect NaN Values in Data
NaN is often used for missing data.  
If a NaN is encountered in data, then try to work around it.  
You may want to use the nan∗ functions in the Statistics Toolbox or write your own.  
Often it is useful to use any(isnan(x)) to quickly screen for the presence of NaN entries.  

### 237. Use feof for Reading Files
Do not depend on simply counting an expected number of lines or data entries when reading input data files.  
This can easily lead to end-of-file errors or incomplete input.  
A better approach is to read until end of file.  
Code for this approach can be as simple as  
```matlab  
while ∼ feof(fileId)  
    textLine(iLine) = fgetl(fileId);  
end  
```  
A data input function should usually return the number of lines or values read, with code such as  
```matlab  
iLine = 0;  
while ∼ feof(fileId)  
    textLine(iLine) = fgetl(fileId);  
    iLine = iLine+1;  
end  
```  

### 238. Make Output Modules
Output file requirements are subject to change without notice.  
Avoid mixing output code with computation in a single func tion.  
Mixed-purpose functions are unlikely to be reusable.  

### 239. Format Output for Easy Use
If the output will most likely be read by a human, then make it self-descriptive and easy to read.  
Present displayed or printed output in a consistent manner.  
Apply informative headings and titles.  

If the output is more likely to be read by software than a person, then make it easy to automatically parse.  
If both uses are important, then make the output easy to parse, and write a formatter function to produce a human readable version.  

### 240. Provide for Automation
Enable automated data processing by using number and date conventions in filenames.  
You can easily generate filenames such as data101, data102, etc., in a loop.  
Similarly, you can generate data_2000–07–01, data_2000–07–02, etc.  
You can also access multiple data folders when you have made the folder names easy to generate or select.  

If the filenames are not in a specific numerical or alphabetical order, then you can use the dir function to collect the data filenames that are present.  
Write something like  
```matlab  
d = dir ('*.dat' );  
nFiles = length(d);  
for iFile = 1:nFiles  
    data = load(d(iFile).name);  
    :  
end  
```  

## Classes and Objects
> For most of its existence, MATLAB has been a procedural language.  
Useful object-oriented capability has been added in recent releases.  
The object-oriented approach is especially helpful for problems where objects can effectively represent entities, for example, figures or graphical user interfaces.  
Many of the good programming practices for functions also apply to classes.  

> Use of objects for working with large amounts of data is controversial.  
Well-designed objects can reduce the likelihood of errors in processing, but they can introduce undesirable overhead.  
Classes that serve only as data containers without significant methods might be better replaced with structures.  

### 241. Keep Classes Simple
Simple classes are easier to design, code, document, read, and understand.  
Classes that try to do too much cause problems in testing and use.  
The smaller the public interface of a class, the easier it is to learn.  

One of the major benefits of object-oriented programming is that it encourages serious thought about which data belong together and what will be done with them.  
If a class seems too big, then refactor it into smaller, simpler classes.  
Replace a classes such as  
```matlab  
Business  
```  
with classes such as  
```matlab  
Product  
Employee  
Customer  
```  
and so on.  

If a method is not needed, then do not include it.  
Do not include a method for functionality that can be reasonably achieved with existing methods.  
You will find it much easier to add a method later than to take one out.  
If you have methods  
```matlab  
credit  
debit  
```  
then you may not need  
```matlab  
transaction  
```  

### 242. Avoid Classes with Ambiguous Overlap
The reader should have a good idea about the meaning of a class without having to wonder about the difference between two or more classes.  
If both  
```CustomerInfo``` and ```CustomerData```  
are classes, then try to replace them with a single class  
```Customer```  

### 243. Construct Valid Objects
In object-oriented programming, the constructor method is a contract with the users of the object.  
It tells them everything that is required to make a valid object.  
If the requirements are met, then the constructor must create a valid object.  
In particular, it must create all properties that can be accessed by its get-related methods.  
If your Client class has properties  
```matlab  
priority, address  
```  
then you need to have a constructor method such as  
```matlab  
function ThisClient = Client(priority, address)  
Client.priority = priority;  
Client.address = address;  
```  
If the constructor allows an incomplete set of property values in its input argument list, then it must create valid default values for the undefined properties.  
These default values can be empty or NaN only if they are valid for these properties.  
If you write a constructor such as  
```matlab  
function ThisClient = Client(priority)  
if nargin>0  
    Client.priority = priority;  
End  
```  
then you need to set a default value such as  
```matlab  
properties  
    priority = nan;  
end  
```  

### 244. Follow Constructor Conventions
If the constructor is called with no input variables, then return an error unless you can construct a valid object.
If the input is a list of property values or a parameter-value list, then return an error unless you can construct a valid object from the input variables.
If the only input variable is an object of the same class, then return it.
Constructing classes with this behavior makes it easier to write methods that support appropriate flex ibility in input variables without leading to problems in use.
Write a constructor something like
```matlab
function ThisClient = Client(priority)
    if nargin>0
        ThisClient.priority = priority;
    else
        error(' Supply an input argument' )
    end
end
```

### 245. Define Small, Simple Methods
Small methods are easier to test and understand than compli cated methods.  
A method should perform only one task, and you should be able to define it in a sentence or two.  
If the task does not have a simple definition, then split it into two tasks and write two methods.  
Even if these methods are only called in one context, they are likely to be easier to read, understand and test than one large conglomerate method.  
A large method such as  
```matlab  
processSignal  
```  
should be replaced with smaller methods  
```matlab  
removeBias  
detectArrival  
```  

### 246. Write Methods That You Can Unit Test
As with functions, write methods with low coupling.  
Write most methods as functions rather than parts of the classdef file so that you can test them easily.  
This practice will also keep the classdef file short and easy to read.  
The constructor and protected methods must be in the classdef file.  
Other methods should be functions in a private or @ directory.  

### 247. Do Not Write a Method That Can Produce an Invalid Property
If a method assigns a value to a property, then it must assign a valid value.  
For example, if a property must be positive, then no method or method input variable should be able to make it negative.  
This practice is particularly an issue for set methods and public properties.  

### 248. Avoid Incomplete Public Methods
Do not write a method that can produce inconsistent proper ties.  
This can occur if the method can change only one prop erty without changing closely linked properties.  
For example, if date is represented in year, month, and day properties, then do not write a method that can change only one of them.  
In some cases, careful property definition or attribute choice can reduce the likelihood of incomplete public methods.  
In this example, you could write  
```matlab  
properties  
    dateNumber  
end  
```  
or  
```matlab  
properties (SetAccess = private)  
    year  
    month  
    day  
end  
```  
You would then write a public method such as changeDate  
that would change the linked properties as needed.  

### 249. Try to Make Properties Private
By default, MATLAB makes properties public with public get and set methods.  
The recommended object-oriented practice is to make properties private or protected whenever possi ble because encapsulation is a guiding principle for object oriented design.  
The use of public properties reduces encapsulation because it negates data and implementation hiding.  
If a class computes age from birthday, then use  
```matlab  
properties (SetAccess = private)  
    age  
end  
```  
or possibly  
```matlab  
properties (SetAccess = private, ...  
            GetAccess = private)  
    age  
end  
```  
The disadvantage of private properties is that they cannot be used directly with the usual MATLAB array indexing.  
You may decide to keep some properties public to maintain this compatibility.  

For a public property, you can simply use standard indexing  
and write  
```matlab  
Stocks.price(1, 1:3) = 0;  
```  
For a private property, you would need an access function  
```matlab  
price = Stocks.getPrice;  
price(1, 1:3) = 0;  
Stocks.setPrice(price);  
```  
The code using a public property is familiar to MATLAB programmers and more compact.  
The code using a private property supports encapsulation and provides an opportunity for argument variable checking, for example, to constrain the array indexing to be within the current array size.  

### 250. Do Not Expose Properties with Behavior
Use a method to change a property that has behavior.  
Allowing direct access to the property can work, but this is likely to mislead the user.  
For example, the day of the month might be a property.  
Changing it may also require changing the month.  
Replace access such as  
```matlab  
Market.dayOfMonth = Market.dayOfMonth+1;  
```  
Or  
```matlab  
set(get(Market.dayOfMonth)+1)  
```  
with a method that can be used as  
```matlab  
incrementday(Market,1)  
```  
or better  
```matlab  
Market.incrementday(1)  
```  

### 251. Avoid Writing Methods with Many Input Arguments
Consolidate the input arguments into fewer, higher-level variables (e.g., structures) or write smaller methods.  
As with functions, methods with many arguments are difficult to understand and use.  

### 252. Validate Method Argument Values
Do not trust that the variables passed as input arguments will be exactly as expected.  
In general, check the input values for type and range.  
For example,  
```matlab
function ThisPackage = setweight(ThisPackage, value)
    if value<0
        error(' Use a nonnegative weight' )
    end
    thisPackage.weight = value;   
end
```

### 253. Check for a Property’s Existence Before Using It
Methods, especially public methods that involve get access, should protect themselves against possible missing or invalid properties.  
This problem can easily occur as the result of incomplete constructor or setter methods.  

### 254. Refactor Repeated Code Into Methods
It is difficult to keep repeated method code consistent with the all but inevitable changes.  
Removing duplication is a crucial element of refactoring.  
Writing a separate or private method can ease this maintenance.  
If you find yourself copying and pasting among methods of a class, then consider cutting and pasting to a new method instead  

### 255. Overload Standard Functions When Possible
Using the standard MATLAB function makes it easier to recognize the meaning of the method and to avoid misspellings in use.  
Most standard functions have been used extensively and are likely to have fewer defects than new code.  
If the Sales.mean method computes the mean of a numerical array, then overload the standard mean function rather than writing a custom method to perform the task.  

### 256. Avoid Unconventional Usage of Overload Names
Using a standard function name for an overload that does something different will confuse the reader. For example,  
```matlab  
Amplitude.add  
```  
should perform an addition, not a concatenation or some other operation.  

### 257. Do not Overload && or ||
You will lose the ability to short circuit expression evaluation.  
Short circuiting is valuable for both error reduction and performance improvement.  

### 258. Do not Get Carried Away with Inheritance
One level of inheritance is usually the best practice.  
The MATLAB language allows multiple levels of inheritance, that is for example, defining a class as a subclass of a subclass of a superclass.  
This practice can be difficult to design, maintain, and understand.  

The MATLAB language also allows multiple inheritance, that is, defining a class as a subclass of two or more superclasses.  
This practice can also be difficult to design , maintain, and understand.  
In particular, changing one of the superclasses can lead to conflicts that are awkward to resolve.  

### 259. Place Method Functions in Folders Consistently
Functions that are overloads and use the object as an input argument must be in the @ folder.  
Functions that do not use the object as an input argument must be on the MATLAB path, typically in the parent of the @ folder.  
Functions that are not overloads but use the object as an input argument could in principle be in either folder.  
Place them in the @ folder to help avoid function shadowing.  

### 260. Use Java Syntax for Java Methods
In general, use the standard Java style to invoke methods of
Java objects:
```matlab
Chart.setYLabel(' $' )
```
You can also use the MATLAB syntax:
```matlab
set(Chart, ' YLabel' , ' $' )
Avoid using mixed syntax:
setYLabel(Chart, ' $' )
```

## Exceptions, Errors, and Warnings

### 261. Use Appropriate Error Handling
Errors happen. When they do, handle them based on severity  
and context. MATLAB provides several choices for dealing  
with errors:  
  ```matlab  
  Let the error halt the program.  
  Issue an error message.  
  Return an error code.  
  Return NaN or [].  
  Generate a warning.  
  ```  
In general, use the functions error or warning depending  
on severity. Do not use the function disp to issue errors or  
warnings.  

### 262. Prepare for Errors
Both data and code are potential error sources.  
Write defensive code to check for errors early and often.  
Try to provide a grace ful way to deal with errors.  
In general, errors should be caught in low-level routines and fixed or passed on to higher-level routines for resolution.  
A useful tool for protection against error conditions is the try catch construct:  
```matlab  
try  
    thisSample = data(iSample);  
catch IndexError  
    index = min(iSample, nSamples);  
    thisSample = data(index);  
end  
```  
Another line of defense is to use properly ordered expressions in if statements so that evaluation short circuiting can avoid evaluation of expressions that will trigger an error:  
```matlab  
if exist(' a' ) && ∼isempty(a)  
    :  
end  
```

### 263. Make Error Messages Informative
Where possible, supplement the MATLAB warning or error message with specific information that will help the user understand the issue and what to do about it.  
Write proscriptive error messages.  
It is more useful to tell a user what to do about an error than to simply state that an error has occurred.  
Replace  
```matlab  
error(' Argument error' )  
```  
with  
```matlab  
error(' Make beta between 0 and 1. ')  

### 264. Use Message IDs with Errors and Warnings
Message IDs provide additional useful information and allow selective disabling.  
Replace  
```matlab  
error(' Make beta between 0 and 1. ' )  
```  
with  
```matlab  
error(' foo: parameter check' , ' Make beta between 0 and 1. ' )  
```  

### 265. Use Exceptions
An exception object supports more flexibility in dealing with an error condition than a simple error function.  
Provide an exception argument for the catch command in a try catch construct that works with errors.  

### 266. Support Error Returns
The best practice is to use exception handling for function errors.  
This makes it easier to handle the error at the most appropriate level.  
If you choose not to use exceptions, you can use function error return codes.  
If the return code is numerical, then it should be integer.  
By convention, the number 1 or a positive integer should be used for the absence of an error.  
Zero or a negative number should be used for an error condition.  
It is good practice to also return a message on error.  
Do not use the implicit error return of a function in if or switch constructs.  
This practice is more difficult to under stand, and it removes the opportunity to grab the error message.  

Replace  
```  
if foo(in)<=0  
    % Deal with error.  
end  
```  
With  
```  
[errorCode, errorMessage] = foo(in);  
if errorCode  
    % Deal with error.  
end  
```  

### 267. Use Appropriate Assertions
__In MATLAB, the assert function is closely related to error.__  
It can act as a replacement for the basic if error sequence.  
For example  
```matlab  
assert(x<=0)  
```  
is equivalent to  
```matlab  
if x>0  
    error  
end  
```  
Assertions can also replace basic try catch constructs.  
A series of assert statements can be more compact than a series of if error or try catch constructs.  

For some developers, assertion is used only for an “impossible” condition, whereas error is used for an unlikely and problematic condition.  
Others use assertion to uncover programming defects and error to catch data-related problems.  

## Output Style

### 268. Learn to Use sprintf
MATLAB provides the function int2str to produce a number with no decimal places and num2str to produce a number with up to four decimal places.  
You can achieve more flexibility in the number of decimal places with sprintf or fprintf as in  
```  
sprintf(' %5.2f' , value)  
```

### 269. Learn to Use Tex
You can include Tex markup in character strings to include special characters and symbols in the resulting strings.  
This capability is especially useful to enhance labels and text entries for graphs.  

## Tests
We test to increase confidence in the code because untested software fails.  
Test to reduce defects, and test enough to reduce fear of defects.  
The process of writing and running tests can uncover design, structural, and logical problems.  
Responding to the tests can make the code more robust, readable, and well structured.  
Consider that any function too difficult to test well is probably too difficult to write correctly.  

Writing test code can be as difficult as writing production code because it must meet the same quality standards.  
Readability is essential in test code.  
In most cases, the guidelines for test code are the same as those for production code.  
There are a few differences in naming and organization that support usability.  

### 270. Write at Least One Test for Every Function or Method
This practice will improve the quality of the initial version of the function and the reliability of changed versions.  
Thinking through and writing test code can help better define the functionality and arguments of the function.  
The test routine should verify response to the defined number and types of arguments.  
It should also test the envelope conditions.  

Update tests when you change production code.  
Be sure that your test suite covers any change in behavior.  
In general, you should add rather than delete tests.  

### 271. Write Small Tests
Thorough testing requires a set of focused tests.  
You will find it easier to evaluate the output of a small test than a long complicated one and to trace any test failure back to relevant code.  
Do not write tests within production code files.  
Writing a test in its own file is better than using an embedded test subfunction.  
The test is more likely to be complete, and the production code is less likely to depend on the test code.  
It is also awkward to use a test subfunction for automated testing.  

### 272. Write Uncoupled Tests
Write the test code so that the results do not depend on the order of testing.  
Test code will change, and interdependent tests will cause even more debugging.  
In general, each section of test code should include its own setup, evaluation, and cleanup.  

### 273. Write Tests with Boolean Outputs
You can best automate testing, especially when running mul tiple tests, by writing tests to have Boolean outputs.  
Typically, the output value is true if everything works or false when at least one case fails.  
Code passes the tests if any valid input pro duces the correct output and if any invalid input is detected and coped with.  

### 274. Test for Expected Exceptions
Your production code may include exception statements.  
Your test code should trigger the exception, catch the exception, and make sure it is the expected one.  
An example would be a function that generates an exception for invalid input.  
The test code would call the function with an invalid input variable.  
The function fails this test if the exception is not generated.  

### 275. Write Tests You Can Automate
In general, write one test function or class that includes all unit tests for each production function or class unless it becomes too long.  
If it is too long, then break it up by type of test, feature, or method.  

Consider writing unit tests that do not stop on error.  
Getting results from multiple unit tests can help determine what went wrong.  

### 276. Use Related Names in the Function and the Test Code
Using the same or related variable names in both places makes it easier to scan the test and production code for variable to-argument matching or naming issues.  
When calling the function  
```matlab  
function foo(alpha, beta)  
```  
use  
```matlab  
foo(alpha, beta)  
```  
or  
```matlab  
foo(thisAlpha, thisBeta)  
```  

### 277. Identify Test Files by Name
Use the word test as a prefix in the test file name to support easy file organization.
Using a distinctive name style for test functions and files makes it easier to select test code for automation and to prevent production code from depending on test code.
Using a test name that is closely related to the function name makes it easier to find the appropriate test code.
For example, use the name
```matlab
test_foo
```
with the function foo.

### 278. Develop Test Patterns
In general, the test code should require less time to develop than the code to be tested.  
Yet, test code is as difficult to write correctly as project code.  
The strategy is to develop test code patterns.  
The patterns could, for example, produce interesting inputs or evaluate expected outputs.  
When the inputs are common to multiple tests, write setup code to produce them.  

Thorough testing may require writing tests that go beyond obvious user stories or stated requirements.  
Patterns can help define these important but underspecified tests.  
Your test pat terns might include looking for problems with boundary data such as extreme values and empty variables.  

### 279. Consider Tests for External Software
You may want to write tests for external software that interfaces with your own to be sure that you understand how it works.  
You can also run these tests when new versions of the external software are released to catch any problematic changes.  

## Data Files

### 280. Make Use of mat Files
Consider storing preprocessed input data in a mat file for multiple processing accesses.  
Organize data into arrays, structures, or objects with meaningful names.  
Organize the data so that access and computation are as straightforward as possible.  
Mat files have a big advantage over other file types in that they maintain the variable names associated with the data.  

### 281. Follow Database Conventions
Use standard database arrangements for data arrays.  
In the usual database organization for a data table, each column is a field, parameter, or variable.  
Each row is a record, sample, or observation.  

Good database practices include selection criteria (and having a good field for selection), consistency (names and types), sorting (and having a good field for sorting), and input validation (checking before storing).  

### 282. Follow the MATLAB Convention for Data Array Orientation
Put time series in columns of data arrays.  
This is the default orientation for most MATLAB functions.  
Similarly, arrange data that will be summarized and compared so that the summary is along columns and the comparison is along rows.  
For example, consider a data array of temperatures by date for several cities.  
The data for each city would be a column, and the data for each date would be a row.  
For associated variables, the dates would be in a column vector, and the city names would be in a row cell array.  

## Programming Summary
> __Write code and refine it to meet high standards.__  
Write readable code that is easy to use, modify, and test.  
Your users will thank you, and your life will be better.  

> __Use variables consistently.__  
Avoid confusing definition or redefinition.  
Make the meaning of constants clear.  
Minimize the use of global constants and variables.  

> __Write short, easy-to-read expressions and statements.__  
Use intermediate variables to capture the meaning of expressions.  
Use spaces, parentheses, and the order of variables and operators to clarify expressions.  

> __Write loops simply so that they are easy to read and get correct.__  
Be careful of starting and ending details.  
Initialize computed variables to avoid surprises and achieve better performance.  

> __Write if and switch constructs simply so that they are easy to read and get correct.__  
Simplify selection expressions, but avoid redundant selections.  
Extract code from selection blocks to subfunctions if that clarifies the construct.  
In general, include else or otherwise.  
