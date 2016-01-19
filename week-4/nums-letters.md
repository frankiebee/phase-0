#Numbers and letters reflection

```Ruby
# disclaimer: how many hours in a calender year vs how many hours in an
#actual year are different. 1 actual year is 8765.81277 hours vs 1 calender #year has 8760 hours.
a = 365 * 24 #hours in a year
b = 366 * 24 #hours in a leap year

puts "There are #{a} hours in a year, #{b} in a leap year. A decade with no leap years has #{a * 60**2 * 10} seconds, but no decade has no leap years so... A decade with 1 leap year has #{(a * 60**2 * 9)+(b * 60**2)} seconds. A decade with 2 leap years has #{(a * 60**2 * 8)+(b * 60**2 *2)} seconds and a decade with 3 leap years has #{(a * 60**2 * 7)+(b * 60**2 * 3)} seconds. "
```
#####Exercises: 
*[Defining Varaiables](https://github.com/frankiebee/phase-0/blob/master/week-4/defining-variables.rb)

*[Simple String](https://github.com/frankiebee/phase-0/blob/master/week-4/simple-string.rb)

*[Basic Math](https://github.com/frankiebee/phase-0/blob/master/week-4/basic-math.rb)

**What does puts do?**

Prints to the console with a new line.

**What is an integer? What is a float?**

Integers are whole numbers and floats are numbers with floating point decimals. So 5 is an integer and 5.0 is a float.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?


**How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Symbols:

*```+``` this is for addition

*```-``` this is for subtraction

*``` * ``` this is for multiplication

*```/``` this is for division

More symbols:

*```**``` this is the symbol for power so if you did 2*2*2*2 you could instead write it 2**4

*```%```  this is a modulo this calculates remainder so x % y would give us the remainder of x after evenly dividing x with y.

**What is the difference between integers and floats?

Integers are whole numbers and floats are numbers with floating point decimals. So 5 is an integer and 5.0 is a float.

**What is the difference between integer and float division?
Division of integers will round down if the the quotient is not wholly divisible. Where a float can be properly divided. For example:
```Ruby
~ 5/2
=> 2
~ 5.0/2.0
=>2.5
```


**What are strings? Why and when would you use them?

Stings are a collection of characters in between quotation marks. You would use them to print to the terminal or display.

**What are local variables? Why and when would you use them?

Local variables are names for data or set of data stored on your computer so that you can access the data later. The process of attaching data to a variable name is called assignment and the variable name has to start with a lower case letter and should only be made of letters underscores and numbers.

**How was this challenge? Did you get a good review of some of the basics?

Yes it was a review... It was very easy though.
