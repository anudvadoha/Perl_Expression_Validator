# Perl_Expression_Validator
 To run, use "perl legality_check.pl". Input file is "all_input.txt".

I will explain in points what I tried to do and where I am stuck.

1) I had previously designed a compiler for a course project. So, the conventional approach to a problem like this would be to push all the elements onto a stack, and evaluate the stack based on a few rules/grammar. The rules could be "Every paranthesis should be in pairs". "Every operator should be accompanied by a variable/number on the left and a variable /number or a paranthesis on the right."

As I had worked on something like this before, I thought I will approach the problem differently.

2) As the Perl intepreter/compiler would already have an expression evaluator built within it, I thought I would just use that instead of building my own. 

3) The script, reads in the input, line by line, from an input file, and replaces all variables in the expression by a $variable. 

(I have assumed that the variable would be single alphabet)

4) This above string is now evaluated in perl. Using the Eval function. 


Shortcomings:

1) Perl eval function accepts doesn't complain for any number of ending paranthesis. For ex ;  (1 + (3 - a ) + b )  / c ))) would be Valid according to it.

2) My idea was to catch the exceptions/errors thrown when evaluating a bad expression and declare that expressions as Invalid. However, as I am using the Eval function to evaluate a string, the exception thrown is not aborting the program. This makes it impossible to know which input expression is causing the error/exception. I spend a lot of time trying to find a work around for this, but to no avail so far.
