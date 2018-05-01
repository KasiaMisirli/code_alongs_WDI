

var words = ["Monday","Summer","bicycle","cinema","sofa",
"melbourne","africa","donald","sophia","animals","turkey","web","ruby",
"javascript","forest","island","tired","hungry","smart","David","Madonna","europe"];
var letters="ABCDEFGHIJKLMNOPQRSTUVWXYZ";

var randomWord = words[Math.round(Math.random()*(words.length-1))];
console.log("random word: "+randomWord);
var secretWord = randomWord.toLowerCase();
var wordUniques = [];
for(var i=0;i<secretWord.length;i++){
    if(!wordUniques.includes(secretWord[i])){
        wordUniques.push(secretWord[i]);
    }
}
console.log("Word Uniques: "+wordUniques);
var lettersNotInWord = [];
var lettersInWord =[];

console.log("number of letters in word: "+ secretWord.length);
var guesses = 10;
while(guesses>0){
    do{
        var letter = prompt("enter letter");
    }while(lettersNotInWord.includes(letter) || lettersInWord.includes(letter));

    if(secretWord.includes(letter)){
        console.log("You guessed correct letter");
        console.log("randomletter "+letter);
        lettersInWord.push(letter);
        console.log("lettersinword "+lettersInWord);
    }else{
        console.log("Try again");
        lettersNotInWord.push(letter);
        console.log("lettersNOTInWord "+lettersNotInWord);
        guesses--;
        console.log("guesses left: "+guesses);
    }
    
    if(wordUniques.length===lettersInWord.length){
        console.log("Congrats! jackpot");
        break;
    }else{
        console.log("Try again!");
    }
}