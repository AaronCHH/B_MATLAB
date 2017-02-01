# 3. Naming


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [3. Naming](#3-naming)
  * [General](#general)
    * [28. Use Meaningful Names](#28-use-meaningful-names)
    * [29. Use Familiar Names](#29-use-familiar-names)
    * [30. Use Consistent Names](#30-use-consistent-names)
    * [31. Avoid Excessively Long Names](#31-avoid-excessively-long-names)
    * [32. Avoid Cryptic Abbreviations](#32-avoid-cryptic-abbreviations)
    * [33. Treat Familiar Acronyms as Words](#33-treat-familiar-acronyms-as-words)
    * [34. Avoid Names that Differ Only by Capitalization](#34-avoid-names-that-differ-only-by-capitalization)
    * [35. Avoid Names that Differ Only by One Letter](#35-avoid-names-that-differ-only-by-one-letter)
    * [36. Avoid Names with Hard-to-Read Character Sequences](#36-avoid-names-with-hard-to-read-character-sequences)
    * [37. Make Names Pronounceable When You Can](#37-make-names-pronounceable-when-you-can)
    * [38. Write Names in English](#38-write-names-in-english)
  * [Variables and Parameters](#variables-and-parameters)
    * [39. Avoid Ambiguous or Vague Names](#39-avoid-ambiguous-or-vague-names)
    * [40. Name According to Meaning, Not Type](#40-name-according-to-meaning-not-type)
    * [41. Use Lowercase for Simple Variable Names](#41-use-lowercase-for-simple-variable-names)
    * [42. Use lowerCamelCase for Compound Variable Names](#42-use-lowercamelcase-for-compound-variable-names)
    * [43. Use Meaningful Names for Variables with a Large Scope](#43-use-meaningful-names-for-variables-with-a-large-scope)
    * [44. Limit Use of Very Short Names to Variables with a Small Scope](#44-limit-use-of-very-short-names-to-variables-with-a-small-scope)
    * [45. Be Consistent With i and j](#45-be-consistent-with-i-and-j)
    * [46. Use the Prefix n for Variables Representing the Number of Entities](#46-use-the-prefix-n-for-variables-representing-the-number-of-entities)
    * [47. Follow a Consistent Convention on Pluralization](#47-follow-a-consistent-convention-on-pluralization)
    * [48. Use the Prefix this for the Current Variable](#48-use-the-prefix-this-for-the-current-variable)
    * [49. Use the Suffix No or Prefix i for Variables Representing a Single Entity Number](#49-use-the-suffix-no-or-prefix-i-for-variables-representing-a-single-entity-number)
    * [50. Prefix Iterator Variables with i, j, k, etc](#50-prefix-iterator-variables-with-i-j-k-etc)
    * [51. Embed is, has, etc., in Boolean Variable Names](#51-embed-is-has-etc-in-boolean-variable-names)
    * [52. Avoid Negated Boolean Variable Names](#52-avoid-negated-boolean-variable-names)
    * [53. Use the Expected Logical Names and Values](#53-use-the-expected-logical-names-and-values)
    * [54. Avoid Using a Keyword or Special Value Name for a Variable Name](#54-avoid-using-a-keyword-or-special-value-name-for-a-variable-name)
    * [55. Avoid Hungarian Notation](#55-avoid-hungarian-notation)
    * [56. Avoid Variable Names that Shadow Functions](#56-avoid-variable-names-that-shadow-functions)
    * [57. Avoid Reusing a Variable for Different Contents](#57-avoid-reusing-a-variable-for-different-contents)
    * [58. Consider a Unit Suffix for Names of Dimensioned Quantities Constants](#58-consider-a-unit-suffix-for-names-of-dimensioned-quantities-constants)
    * [59. Use All Uppercase for Constant Names with Local Scope](#59-use-all-uppercase-for-constant-names-with-local-scope)
    * [60. Use Function Names for Constants Defined by Functions](#60-use-function-names-for-constants-defined-by-functions)
    * [61. Use Meaningful Names for Constants](#61-use-meaningful-names-for-constants)
    * [62. Define Related Constants Based on the Relation](#62-define-related-constants-based-on-the-relation)
    * [63. Consider Using a Category Prefix ## Structures and Cell Arrays](#63-consider-using-a-category-prefix-structures-and-cell-arrays)
    * [64. Use UpperCamelCase for Structure Names](#64-use-uppercamelcase-for-structure-names)
    * [65. Do Not Include the Name of the Structure in a Fieldname](#65-do-not-include-the-name-of-the-structure-in-a-fieldname)
    * [66. Use Fieldnames that Follow the Naming Convention for Variables](#66-use-fieldnames-that-follow-the-naming-convention-for-variables)
    * [67. Name Cell Arrays Following the Style for Variables ## Functions](#67-name-cell-arrays-following-the-style-for-variables-functions)
    * [68. Give Functions Meaningful Names](#68-give-functions-meaningful-names)
    * [69. Name Functions for What They Do](#69-name-functions-for-what-they-do)
    * [70. Follow a Case Convention for Function Names](#70-follow-a-case-convention-for-function-names)
    * [71. Reserve the Prefixes get/set for Accessing an Object Property](#71-reserve-the-prefixes-getset-for-accessing-an-object-property)
    * [72. Use Expected Verbs in Expected Ways](#72-use-expected-verbs-in-expected-ways)
    * [73. Use the Prefix is for Boolean Functions](#73-use-the-prefix-is-for-boolean-functions)
    * [74. Use Complement Prefixes in Compound Names for Complement Operations](#74-use-complement-prefixes-in-compound-names-for-complement-operations)
    * [75. Be Selective in the Use of Numbers at the Ends of Names](#75-be-selective-in-the-use-of-numbers-at-the-ends-of-names)
    * [76. Use Numbers Inside Function Names Only for Common Conventions](#76-use-numbers-inside-function-names-only-for-common-conventions)
    * [77. Avoid Unintentional Shadowing Classes](#77-avoid-unintentional-shadowing-classes)
    * [78. Use Nouns When Naming Classes](#78-use-nouns-when-naming-classes)
    * [79. Use UpperCamelCase for MATLAB Class and Object Names](#79-use-uppercamelcase-for-matlab-class-and-object-names)
    * [80. Use UpperCamelCase for Exception Names](#80-use-uppercamelcase-for-exception-names)
    * [81. Name Properties Like Structure Fields](#81-name-properties-like-structure-fields)
    * [82. Name Methods Like Functions](#82-name-methods-like-functions)
    * [83. Name Accessor Methods after their Properties](#83-name-accessor-methods-after-their-properties)
    * [84. Use a Single Lowercase Word as the Root Name of a Package Data Files and Directories](#84-use-a-single-lowercase-word-as-the-root-name-of-a-package-data-files-and-directories)
    * [85. Use Directory and Filenames that are Easy to Work with](#85-use-directory-and-filenames-that-are-easy-to-work-with)
    * [86. Use Sortable Numbering in Data Filenames](#86-use-sortable-numbering-in-data-filenames)
    * [87. Use ISO Date Format](#87-use-iso-date-format)
  * [Naming Summary](#naming-summary)

<!-- tocstop -->


__The purpose of a software naming convention is to help the people who read and write the code understand the program.__  
Understanding the code makes it easier to use, write, or modify correctly.  
__The goal in naming is to use names that are easy to recognize and associate with their meaning and role.__  

The basic content idea is to use words and character sequences that help connect a name with the entity that it represents.  
It is a great idea to use names that are intuitive, but developers have surprisingly divergent ideas on which names are intuitive.  
A more realistic objective is to use names that help the reader understand the code.  

The basic visual style idea is to use different visual styles for different identifier types.  
This makes it easier to recognize the various elements of the language.  
Clearly, some consistency and differentiation is important.  
There is a balance in differ entiation because having a large number of styles makes for too much to remember.  
In any case, only a few variations of naming style are available in MATLAB, so the language elements have to be grouped into a smaller number of styles.  
There is controversy is over how best to do it.  

Establishing a naming convention for a group of developers is important, but the process can become ridiculously con tentious.  
There is no naming convention that will please every one.  
Following a convention consistently is more important than the details of the convention.  
Inconsistent practices con fuse readers and raise legitimate concerns about code quality.  

The choices in this guide are based on the belief that similar elements should look similar, and that common usage in the MATLAB and Java communities should be respected.  
This section describes a commonly used convention that is familiar to many programmers of MATLAB and other languages.  


## General
The names of identifiers trigger associations.  
Good identifier names aid comprehension of both the thing named and the associated code structure.  
Good names are very helpful to both the reader and the programmer.  
However, coming up with good names is not easy.  
Keep trying until you get them right.  
If you change the definition or usage of a variable or function so that its name becomes misleading or wrong, then rename it.  

To reduce confusion, identifier names should look dissim ilar without intensive inspection.  
Names should be easy to remember and easy to associate with a meaning.  
They should also be responsive to their environment (not too short or long).  
Trade-offs are likely to be required.  


### 28. Use Meaningful Names
Use identifier names that convey a meaning consistent with the problem domain or typical interpretation.  
MATLAB can cope with  
```matlab
w = h * n  
```
but the reader will find it much easier to follow  
```matlab
wage = hourlyRate * nHours  
```
Try for descriptive but not overly verbose names.  
Replace  
```matlab
s, computedYears, numberOfStudents  
```
with  
```matlab
salary, yearsToRetirement, nStudents  
```
Meaningful names make the identifiers easier to understand and remember.  
Both attributes make the code easier to read, write, and use.  

### 29. Use Familiar Names
If your domain convention is to use “client,” do not use “customer” or “consumer” as a variable name.  
Put the elements of compound names in familiar order.  
Replace  
```matlab  
lengthArm  
```  
with  
```matlab  
armLength  
```  
If the software is targeted for a knowledge domain or a user group, then use names consistent with standard practice in that domain or by that group.  
Replace  
```matlab  
imageRegionForAnalysis  
```  
with  
```matlab  
roi or regionOfInterest  
```

### 30. Use Consistent Names
Simplify the reader’s life by not mixing similar names such as  
```matlab
customer, customerData, customerInfo  
```
for the same or related values. Organize the data so that it makes sense to use one name or multiple distinctive names.  
Similarly, avoid mixing similar action terms such as  
```matlab
fetchaccount, retreivestore, returncustomer, getinventory  
```
for the same general functionality.  


### 31. Avoid Excessively Long Names
Names that are too long can be difficult to scan and use.  
Long names are particularly problematic in visually parsing expressions.  
Because very long names decrease the readability of expressions and statements, the best names are those just long enough to be descriptive.  
In general, names longer than fifteen characters are not recommended.  
Replace  
```matlab  
applyThresholdToDataArray  
```  
with  
```matlab  
applyThreshold  
```  
The goal in choosing names is not necessarily to give every thing complete and proper names, but rather to give them comprehensible and trackable names.  


### 32. Avoid Cryptic Abbreviations
Make identifiers easy to read by avoiding unnecessary abbre viation or shortening.  
The use of abbreviations usually makes names less pronounceable and more difficult to remember.  
Programmers are used to some shortening in compound words, but do not overdo it.  

Using whole words reduces ambiguity and helps make the code self-documenting.  
Because they are often not unique, abbreviations are prone to interpretation and typing errors.  
Use  
```matlab      
computeArrivalTime  
```  
Avoid  
```matlab  
comparr  
```  
In this case, it is unclear whether the intent is compute or compare.  
Common MATLAB usage justifies some abbreviations such as col for column, dim for dimension, and h for handle.  
Domain specific abbreviations are also acceptable. For example,  
```matlab  
shuttle for spaceShuttle  
tech for technical  
meds for medications  
```  
Some abbreviations might benefit from a defining comment near their first appearance.  


### 33. Treat Familiar Acronyms as Words
Domain-specific phrases that are more naturally known through acronyms should be used as acronyms rather than compound words. For example,  
```matlab
html, cpu, cm  
```
Use the same convention for capitalizing acronyms as for words.  
Use  
```matlab
htmlVersion, pdfParser  
```
not  
```matlab
HTMLVersion, PDFParser  
```
or  
```matlab
hTMLVersion, pDFParser  
```

### 34. Avoid Names that Differ Only by Capitalization
Names that differ only by capitalization are easy to confuse, and this is an almost certain way to introduce defects.  
Con sistent capitalization is one of the hallmarks of good style.  
Do not use FlightTime or Flighttime in the same module in which you use flightTime.  

Do not use x and X in the same module.  
Authors of books and papers sometimes use names such as x and X together for related but distinct entities.  
Programmers work in a different is context because most readers find it easier to differentiate similar names on the printed page than in code displayed on an editor screen.  


### 35. Avoid Names that Differ Only by One Letter

Choose identifier names that will not be confused.  
Names within a file should differ enough to be readily distinguished.  
Names that are almost the same make the code difficult to scan.  
They also increase the likelihood of unintentional use.  

___Code written by novices often includes names like a1, a2, a3 or a, aa, aaa.___  
This is usually evidence that the names are not meaningful.  
Even names that carry some meaning can be problematic if they only differ by one number or letter.  
The following published code has an error in the third line that is disguised by poor variable naming:  
```matlab  
total = price * qty;  
total2 = total - discount;  
total2 = total * (1 + taxRate);  
```  
The intent was  
```matlab  
subtotal = price * quantity;  
discountedTotal = subtotal - discount;  
billableTotal = discountedTotal * (1 + taxRate);  
```  


### 36. Avoid Names with Hard-to-Read Character Sequences
Avoid names containing sequences such as ll1 or O0 because they can be difficult to recognize or spell consistently.  
Also avoid using lowercase l or uppercase O as a single-letter name.  


### 37. Make Names Pronounceable When You Can
___Names that are pronounceable are easier to read and remem ber.___  
The audio cues can make names easier to hold in short term memory.  
Pronounceable names improve communica tion with other programmers and also reduce the likelihood of typographic errors.  


### 38. Write Names in English
The MATLAB product is written in English, and English is the preferred language for international development.  

---
## Variables and Parameters

### 39. Avoid Ambiguous or Vague Names
A good name distinguishes one variable from another.  
A variable name that has to be deciphered should be changed.  
Names such as temp1 and vec convey little meaning.  
If used, they should be limited to very small scope.  

Be selective in the use of numbers at the ends of names.  
The appearance of numbers at the ends of variable names often indicates poor naming.   
Replace  
```matlab  
length1, length2  
```  
with  
``` matlab  
lengthStrut, lengthSpring  
```  
or better  
``` matlab  
strutLength, springLength  
```  
There is at least one good use for numbers at the ends of names.  
They are appropriate for coefficients of equations:  
``` matlab  
a1*x + a2*x.^2  
```  


### 40. Name According to Meaning, Not Type
The type or class of a variable is available in the Workspace browser.
Including type or class in a variable name creates a headache if the type or class is changed.
Use
```matlab
Customer, step
```
not
```matlab
customer_structure, int_step
```

### 41. Use Lowercase for Simple Variable Names
This is common practice in the C++, Java, and Windows development communities. For example, use  
```matlab  
linearity, delta  
```  
Very short variable names can be in uppercase if they are uppercase in conventional usage and if they are unlikely to become parts of compound variable names.  
Examples include V and R in electrical engineering and Q in signal processing.  

### 42. Use lowerCamelCase for Compound Variable Names
___The lowerCamelCase style starts each word in a compound name with an uppercase letter, except the first word.___  
The use of capital letters makes it easier to recognize the indi vidual words in the variable name.  
This is common practice in the C++, Java, and Windows development communities.  
Starting variable names with uppercase is usually reserved for objects, types, or structures in other languages. Use  
```matlab  
credibleThreat, qualityOfLife  
```  
Some programmers prefer to use underscore to separate parts of a compound variable name.  
This practice is common in Unix.  
Although readable, this usage is generally unexpected and not common for variable names in other languages.  
Another issue with using underscore in variable names used in graph titles, labels, and legends is that the Tex interpreter in MATLAB will read underscore as a switch to subscript, so you will need to apply the parameter/value pair ‘interpreter’, ‘none’ for each text string.  


### 43. Use Meaningful Names for Variables with a Large Scope
___In practice, most variables should have meaningful names.___  
A descriptive or meaningful name is especially important when a variable is used in code locations that are far apart.  
This usage eases the reader’s burden of remembering what quantity a variable name represents.  
Names that are too short are a common problem that obscures meaning; that is, it is easier to understand and remember the meaning of salary than s.  



### 44. Limit Use of Very Short Names to Variables with a Small Scope

The use of short names should be reserved for conditions in which they clarify the structure of the statements or are consis tent with intended generality.  
In a general-purpose function, it may be appropriate to use short generic variable names such as x, y, z, and t.  

Scratch variables used for temporary storage or indices can have short names because they do not need to be remembered outside local scope.  
Variable names in different local scopes also do not need to be unique.  
A programmer reading such a variable’s name should be able to assume that its value is not used outside a few lines of nearby code.  



### 45. Be Consistent With i and j
The letters i and j have long been used as both imaginary numbers and indices or loop counters.  
There is an inherent conflict in usage with no solution that will delight everyone.  

Many code examples in MATLAB and other languages use i and j as a loop counters.  
Those who favor this usage can establish a different variable for imaginary numbers, such as I , J, or jay, or use an expression of the form 1i, which The MathWorks recommends for speed and robustness.  

Those who favor saving i or j for the imaginary number can use different loop counter variable names such as iSample or I.  
Avoid using both j and J in the same scope because they look similar and thus can be easily confused.  


### 46. Use the Prefix n for Variables Representing the Number of Entities
This notation is taken from mathematics, where it is an established convention for indicating the number of items. Use  
```matlab  
nFiles, nSegments  
```  
rather than  
```matlab  
numFiles, NumberOfSegments  
```  
A common MATLAB-specific variation, based on common matrix notation, is the use of m rather than n as a prefix for number of rows, as in mRows.  


### 47. Follow a Consistent Convention on Pluralization
___Avoid having two variables with names differing only by a final letter.___  
Be especially careful to avoid unintended mixing of the singular and plural names.  
Some programmers make all variable names either singular or plural, but others find that this can be awkward.  
The recommended practice is to use a prefix like this for the singular variable, together with a plural suffix for collections or arrays.  
For example, the singular thisPoint with the plural points, as in  
```matlab  
thisPoint = points(iPoint,:);  
```  
A less common usage for the plural is to append a suffix such as Array.  
For example, the singular point with the plural pointArray, as in  
```matlab  
point = pointArray(iPoint,:);  
```  


### 48. Use the Prefix this for the Current Variable
When referring to a single member of a collection, use this rather than the:  
```matlab
thisPage = pages(iPage);
```

### 49. Use the Suffix No or Prefix i for Variables Representing a Single Entity Number
The No notation is taken from mathematics, where it is an established convention for indicating an entity number.  
Replace  
``` matlab  
tableNumber, employeeNumber  
```  
with  
``` matlab  
tableNo, employeeNo  
```  
The i prefix effectively makes the variable a named iterator, which is convenient for indexing.   
Use  
``` matlab  
iTable, iEmployee  
```  
as in  
```matlab  
thisEmployee = employees(iEmployee);  
```  
Other suffixes that some programmers use are Nbr and Num.  
The most important consideration in this guideline is to dis tinguish clearly between a single entity number and the num ber of entities.  


### 50. Prefix Iterator Variables with i, j, k, etc
The notation is taken from mathematics, where it is an established convention for indicating iterators:  
```matlab  
for iFile = 1:nFiles  
    :  
End  
```  
Many examples of for loops use the variable name i as a loop index.  
This practice may be suboptimal, particularly if the loop is long, because it misses an opportunity to reinforce the meaning of the loop index.  

For nested loops, the iterator variables should usually be in alphabetical order.  
Alternatively, some mathematically ori ented programmers use a variable name starting with i for rows and j for columns, independent of their position in nested loops.  

Especially for nested loops, suggestive iterator variable names are helpful:  
```matlab  
for iFile = 1:nFiles  
    for jPosition = 1:nPositions  
        :  
    end  
    :  
end  
```  


### 51. Embed is, has, etc., in Boolean Variable Names
Use lowerCamelCase and avoid using the word is as a prefix.  
Replace variable names that start with is  
```matlab  
isavalidrange, isMissingData  
```  
with  
``` matlab  
rangeIsValid, dataIsMissing  
```  
In some cases, other words are clearer:  
``` matlab  
borrowerCanQualify, lenderHasMoney  
```  
This convention avoids confusion with or shadowing of Boolean function names, which usually start with is in MATLAB software.  


### 52. Avoid Negated Boolean Variable Names

### 53. Use the Expected Logical Names and Values

### 54. Avoid Using a Keyword or Special Value Name for a Variable Name

### 55. Avoid Hungarian Notation

### 56. Avoid Variable Names that Shadow Functions

### 57. Avoid Reusing a Variable for Different Contents

### 58. Consider a Unit Suffix for Names of Dimensioned Quantities Constants

### 59. Use All Uppercase for Constant Names with Local Scope

### 60. Use Function Names for Constants Defined by Functions

### 61. Use Meaningful Names for Constants

### 62. Define Related Constants Based on the Relation

### 63. Consider Using a Category Prefix ## Structures and Cell Arrays

### 64. Use UpperCamelCase for Structure Names

### 65. Do Not Include the Name of the Structure in a Fieldname

### 66. Use Fieldnames that Follow the Naming Convention for Variables

### 67. Name Cell Arrays Following the Style for Variables ## Functions

### 68. Give Functions Meaningful Names

### 69. Name Functions for What They Do

### 70. Follow a Case Convention for Function Names

### 71. Reserve the Prefixes get/set for Accessing an Object Property

### 72. Use Expected Verbs in Expected Ways

### 73. Use the Prefix is for Boolean Functions

### 74. Use Complement Prefixes in Compound Names for Complement Operations

### 75. Be Selective in the Use of Numbers at the Ends of Names

### 76. Use Numbers Inside Function Names Only for Common Conventions

### 77. Avoid Unintentional Shadowing Classes

### 78. Use Nouns When Naming Classes

### 79. Use UpperCamelCase for MATLAB Class and Object Names

### 80. Use UpperCamelCase for Exception Names

### 81. Name Properties Like Structure Fields

### 82. Name Methods Like Functions

### 83. Name Accessor Methods after their Properties

### 84. Use a Single Lowercase Word as the Root Name of a Package Data Files and Directories

### 85. Use Directory and Filenames that are Easy to Work with

### 86. Use Sortable Numbering in Data Filenames

### 87. Use ISO Date Format

## Naming Summary
