console.log("Guessing game");

/* 

Lets make a guessing game 
set up a secret umber

used should be asked to guess the number
output a happy message if the guess is correct
output a sad message is the guess is correct, until the end of time

- var
- is statement
- output
-loop

*/


var secret = 42;
var input;
// prompt for imput
while (input !== secret ){
        input = Number(prompt("enter number between 1 -50"));
    if (input === secret){
        console.log("you are lucky");
    }else {
        console.log("try again");
        //debugger
    }
}