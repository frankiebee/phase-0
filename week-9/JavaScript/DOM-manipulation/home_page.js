// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:


// Release 1:
document.getElementById('release-0').className = "done";

// Release 2:

document.getElementById('release-1').style.display = "none";


// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 3!!!";



// Release 4:

document.getElementById("release-3").style.background = "#955251";


// Release 5:
var elements = document.getElementsByClassName("release-4")
for (var elm = 0; elm < elements.length; elm++){
elements[elm].style.fontSize = "2em";
}

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


//Reflection:
// What did you learn about the DOM?
//- I had worked with the DOM  in a past exercise so i didn't learn anything new in this exercise.
// What are some useful methods to use to manipulate the DOM?
//document.getElementById()
//document.getElementsByTag()
//document.getElementsByClassName()
//.style
//on and on and on