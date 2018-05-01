console.log("functions");


var numbers = [1,2,3];

var sum = function(arrOfNumbers){
  var total = 0;
for(var index = 0; index<arrOfNumbers.length;index++){
    total = total + arrOfNumbers[index];
}
 return total;
}

console.log(sum(numbers));


var addFive = function(num){
    var result =num+5;
    return result;
}

console.log(addFive(sum(numbers)));




// 1. Write a function named calculateAge that:
// - takes 2 arguments: birth year, current year.
// - calculates the 2 possible ages based on those years.
// outputs the result to the screen like so: "You are either 100 or 101"
// - Call the function three times with different sets of values.

//below if we want to get input from used
var calculateAge = function(birthYear,currentYear){
    birthYear = prompt("enter your birth year");
    currentYear = prompt("enter the current year");
    var currentAge= currentYear - birthYear;
    var ageBeforeBirthday =(currentYear - birthYear)-1
    return currentAge;
}
console.log(calculateAge());
//------------------------
var calculateAge = function(birthYear,currentYear){
    
    var currentAge= currentYear - birthYear;
    var  ageBeforeBirthday =(currentYear - birthYear)-1;
    var message = "you are either "+currentAge+" or "+ageBeforeBirthday;
    return message;
}
console.log(calculateAge(1987,2018));
console.log(calculateAge(1985,2018));
console.log(calculateAge(1988,2018));

//  2. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.
var newArray=[];
var pets =["dog","cat","fish"];
var lengths = function(array){
    for(var index=0;index<array.length;index++){
    newArray.push(array[index].length)
    }
    return newArray;
}
console.log(lengths(pets));


// 3. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the product of the first two numbers,
// raised to the power of the third number.

var transmogrifier = function(a,b,c){
    var aB=a*b;
    var result = Math.pow(aB,c);
   return result;
}
console.log(transmogrifier(2,3,4));

// 4. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.

var wordReverse = function(string){
    var reversed= string.split("").reverse().join("");
    return reversed;
}
console.log(wordReverse("dog"));

