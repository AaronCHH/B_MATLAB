# 1. General Principles
## 1. Avoid Causing Confusion

Avoid doing things that would be an unpleasant surprise to other software developers.  
The interfaces and the behavior exhibited by your software must be predictable and consistent.  
If they are not, then the documentation must clearly identify and justify any unusual instances of use or behavior.  

To minimize the chances that anyone would encounter some thing surprising in your software, you should emphasize the following characteristics in its design, implementation, pack aging, and documentation:  

| Simplicity   | Meet the expectations of your users with simple functions classes and methods.                                        |
|--------------|-----------------------------------------------------------------------------------------------------------------------|
| Clarity      | Ensure that each variable function  class and method has a clear purpose.                                             |
| Completeness | Provide at least the minimum functionality that any reasonable user would expect to find and use.                     |
| Consistency  | Design similar entities with a similar look and behavior. Create and apply consistent standards whenever possible.    |
| Robustness   | Provide predictable, documented behavior in response to errors and exceptions. Do not hide errors, and do not force users to detect errors. |

## 2. Avoid Throw-Away Code

Apply these rules to any code you write, not just code destined for production.
All too often, some piece of prototype or experimental code will make its way into a finished product.
Even if your code never makes it into production, someone else may still have to read it.

Anyone who must look at your code will appreciate your pro fessionalism and foresight at having applied consistent rules from the start.
That person ma


## 3. Help the Reader
___People who read your code are not passive.___  
They actively try to interpret and organize it in their brains.  
You can help the reader by making your naming consistent with meaning, by using layout consistent with logical organization, and by supplying additional relevant information.  
You may well be that reader, even while writing the code.  


## 4. Maintain the Style of the Original
When modifying existing software that works, your changes should usually follow the style of the original code.  
___Do not attempt to rewrite the old software just to make it match a new style.___  
Rewriting old code simply to change its style may result in the introduction of costly, yet avoidable defects.  
The use of different styles within a single source file produces code that is more difficult to read and comprehend.  

If the existing style is problematic, then consider changing the style of the entire file to make it consistent.  
Use of Smart Indent to clarify structure through layout is relatively safe.  
Carefully changing the comments for compatibility with the Help browser is also worth considering.  
If you make changes, then be sure to run regression tests and any existing software that interacts with the module.  


## 5. Document Style Deviations
_**No standard is perfect, and no standard is universally applicable.**_  
Sometimes you will find yourself in a situation where you need to deviate from an established standard.  
If so, then strive for clarity and consistency.  
  
Before you decide to ignore a rule, you should first make sure you understand why the rule exists and what the conse quences are if the rule is not applied.  
If you decide you must violate a rule, then document why you have done so.  
Some organizations will have reasons to deviate from some of these guidelines, but most organizations will benefit from adopting written style guidelines.  
