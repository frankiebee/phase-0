// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.
// Input an object of athlete names and events.
//returns a string saying "Athelet won event"

// Warm Up and Bulk Up!

function olympics(athletes){
  for (var i = 0; i < athletes.length; i++){
   athletes[i].win = athletes[i].name + " won the " + athletes[i].event + ".";
  }
  return athletes;

};

var athletes = [
  {name: "Sarah Hughes",
  event: "Ladies' Singles"},
  {name: "Serena Williams",
  event: "Ladies' Singles"}
];

console.log(olympics(athletes));


// Jumble your words
function jumble(str){
  return str.split("").reverse().join("");

};

console.log(jumble("Your face"))


// 2,4,6,8

function even_num(arr){
  var r_arr = [];
  for (var i = 0; i < arr.length; i++){
    if (arr[i] % 2 === 0){
      r_arr.push(arr[i]);
    }

  }
  return r_arr;
}
console.log(even_num([1,2,3,4,5,6,7]))

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}
// Driver Code
//var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
//console.log(michaelPhelps.constructor === Athlete)
//console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

var robbieSantos = new Athlete("Robbie Santos", 28, "eating", "I can't believe I ate all those hot dogs")
console.log(robbieSantos.constructor === Athlete)
console.log(robbieSantos.name + " " + robbieSantos.sport + " " + robbieSantos.quote)

// Reflection

// 1) What JavaScript knowledge did you solidify in this challenge?
// String methods, constructor version of a function,

// :{ thats a tricky question. Mostly because solidify is a weird way of putting it.
// The concepts all make sense to me. I know what things do, its more a just need
// to practice and work with it more till it be comes natural.

// 2) What are constructor functions?

//The are a form of a function and have the keyword this. They also have a dot".".
// They are kind of like blueprint functions.
// 3) How are constructors different from Ruby classes (in your research)?
// they are different because they don't really need to be initialized and the variables kind of initialize them selves. And rather then being a a blueprint of an object. They are more like a blueprint for a function.







