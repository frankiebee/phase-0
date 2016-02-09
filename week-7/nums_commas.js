/// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Frankie .

// Pseudocode

// Input: number
//Output: comma separated integer as string
// Steps:

// Create a container that holds an integer
// turn the integer into a string
// create a counter and set to 0
// reverse the number
// Insert a comma into the number beginning with 4th position
// Move an additional 3 positions, insert a comma
// continue until number ends

// separateComma(1569743) == "1,569,743"



// array reverse:
// var myArray = ['one', 'two', 'three'];
// myArray.reverse();

// console.log(myArray) // ['three', 'two', 'one']


// things to use:
// //var n = num.toString();

//for (i = 0; i < cars.length; i++) {
//    text += cars[i] + "<br>";
//}
// "".substring(x,y)

// .push
// Initial Solution
function reverse(s) {
  return s.split('').reverse();
}

function separateComma(integer) {
  integer = integer.toString()
  integer = reverse(integer)
  for (var place = 2; place < (integer.length-1); place+=3){
    integer[place] +=",";

  }
  return reverse(integer.join('')).join('');
}
console.log(separateComma(200000000));

// Refactored Solution




// Your Own Tests (OPTIONAL)