// Eloquent JavaScript



// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!



// Program Structure
// Write your own variable and do something to it.
var num = 42;
if (num === 42){ console.log(num + " Is the meaning of life");}
num *= 2;
if (num === 42*2){ console.log(num + " Is the double meaning of life");}

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var num = 1;
while (num <= 100){
	if (num % 3 === 0 && num % 5 != 0){
		console.log("Fizz");
	}
	else if (num % 5 === 0 && num % 3 != 0){
		console.log("Buzz");
	}
	else if (num % 3 === 0 && num % 5 === 0){
		console.log("FizzBuzz");
	}
	else {
		console.log(num)
	}
	num ++
}



// Functions

// Complete the `minimum` exercise.
var min =function(x,y){
	if(x <= y){return x;}
	else{return y;}
}
console.log(min(42,3))
console.log(min(3,30))
console.log(min(42,42))


// Data Structures: Objects and Arrays


// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {name: "Frankie",
				age: 22,
				favorite_foods: ["rice", "sushi", "steak"],
				quirk: "I like bees",
				}
console.log(me["name"])
console.log(me["age"])
console.log(me["favorite_foods"])
console.log(me["quirk"])

// Introduction


// Did you learn anything new about JavaScript or programming in general?
// Not supper new, some things i already kind of new. It was more of a here's how you do this in javaScript rather the learn new concepts.

// Are there any concepts you feel uncomfortable with?
// not sure yet. I don't think I'm uncomfortable with them.

// Ch. 1: Values, Types, and Operators

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// (js)=== and ==(rb) are different
// a variable has to be declared in javScript but not necessarily in ruby.
// almost everything needs a semi colon to say you are done with the statement.
// basic math symbols are the same although javaScript has ++
// you still can use [] when making an array.

// Ch. 2: Program Structure


// What is an expression?
//A small piece of the puzzle.
//If a essay was a script and paragraphs were statements then the sentences would be expressions
//and even the words themselves could be expressions
// What is the purpose of semicolons in JavaScript? Are they always required?
//to mark the end of an expression. No it is no always needed at the end of every line but for our
//purposes yes.

// What causes a variable to return undefined?
// declaring a variable with out a value.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// Its a function that takes the given arguments and writes it as text output. Its like puts in ruby.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console  rather than node since node does not support prompt or alert). Paste your program:

// var favorite_food = prompt("Whats your favorite food?")
// alert("Hey! That's my favorite too!")

// Describe while and for loops
// well a while loop is like "hay computer do this thing while this thing is true".
//A for loop is more like "Yo do this thing this many times/till this is false and increase the thing variable by this much"

// Ch. 3: Functions  (Skip the sections on closure and recursion)


// What are the differences between local and global variables in JavaScript?
// Local variables are accessed and declared inside functions.
//variables created outside functions are called global variables and
//can be accessed anywhere in the script

// When should you use functions?
// for repetitive code, to save time memory

// What is a function declaration?
// when you use function instead of var to declare the function.

// Ch. 4: Data Structures: Objects and Arrays


// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.


// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// what if you had a number that you were looking up? you couldn't just be like array.2 you would have to do array[2]. If you want to use a '.' the thing to the right of the dot must be a valid variable name. where [] interprets the thing inside to get the value.

// What is a JavaScript object with a name and value property similar to in Ruby?
// javScript calls them list but ruby calls them hashes they are for the most part the same.
//arrays are mostly the same and have .length too!
