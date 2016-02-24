//im going to redo the bingo solo challenge:
// Pseudo code:
//bingo call makes new board
//random calls space
//middle is X
//5 x makes win
//ready new call
//complete when win
//THINGS TO THINK ABOUT:
//methods:
//all The ways to win!
//placing a x
//confirming an x
//lottery

//

var bingo = {
	board: {B:[],I:[],N:[],G:[],O:[]},
	letter: ["B","I","N","G","O"],
	win: new Object(),
};
bingo.newBoard = function() {
	var min = 1, max = 16;
	for (var num = 0; num < bingo.letter.length; num += 1){
    	var letter = bingo.letter[num];
    	while(bingo.board[letter].length < 5){
    		var space = random(min,max);
			if (bingo.board[letter].indexOf(space) === -1){
				if (letter === "N" && bingo.board[letter].length === 2){space = "X"}
				bingo.board[letter].push(space);
			}
    	}
		min += 15;
		max += 15;
	}
};
bingo.newBoard();

function random(min,max){return Math.floor(Math.random() * (max - min) + min);};

bingo.call = function(){
	letter = random(0,5);
	letter = bingo.letter[letter];
	switch(letter){
		case "B":
		return [letter,random(1,16)];
		case "I":
		return [letter,random(16,31)];

		case "N":
		return [letter,random(31,46)];

		case "G":
		return [letter,random(46,61)];

		case "O":
		return [letter,random(61,76)];
	};
};
function transpose(array){
	var newArray = new Array();
	for (var arr = 0; arr < array.length; arr++){
		newArray.push([]);
		for (var trans = 0; trans < array[arr].length; trans++){
			newArray[arr].push(array[bingo.letter[trans]][arr]);
		};
	};
	return newArray;
};
bingo.win.horizontal = function(board){
	for(var x = 0; x < board.length; x++){
		if(board[bingo.letter[x]].every(y => y === "X")){return true;}
	};
	return false;
};
bingo.win.vertical = function(board){board = transpose(board); return bingo.win.horizontal(board);};
bingo.win.diagonal = function(board){
	for(var check = 0; check < board.letter.length; check++){
		if (board[bingo.letter[check]][check] !== "x") {break;}
	};
	for(var check = 0; check < board.letter.length; check++){
		board[bingo.letter[check]].reverse();
		if (board[bingo.letter[check]][check] !== "x") {return false;};
	};
	return true;
};
bingo.win.corners = function(board){
	if(board["B"][0] === "X" && board["O"][0] === "X"){
		if(board["B"][4] === "X" && board["O"][4] === "X"){
			return true;
		};
	};
	return false;
};
bingo.changeBoard = function(call){
	if(bingo.board[call[0]].indexOf(call[1]) !== -1){
		var change = bingo.board[call[0]].indexOf(call[1])
		bingo.board[call[0]][change] = "X"
		return true;
	}
	else{return false;}
};
function forTheWin(board){
	if(bingo.win.horizontal(board)){return true;}
	else if(bingo.win.vertical(board)){return true;}
	else if(bingo.win.corners(board)){return true;}
	else{return false;}
};
console.log(bingo.board);
while(!forTheWin(bingo.board)){
	var call = bingo.call();
	console.log(call);
	bingo.changeBoard(call)
	console.log(bingo.board);
}
console.log("WIN!");



// What concepts did you solidify in working on this challenge?
// -solidify is not my favorite word right now. Lets go with this was a fun REVIEW. Its a review
//
// What was the most difficult part of this challenge?
// -Getting syntax down.
//
// Did you solve the problem in a new way this time?
// - i added win.
//
// Was your pseudo code different from the Ruby version? What was the same and what was different?
// -yes and no the words were different but the process was the same.
//
