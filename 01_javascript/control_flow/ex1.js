console.log("conditionals");

/*
if statement

if(condition){

}
____________________________________________
if(condition){

}else{

}

*/

var age = 25;
if(age>18 && hasMoney == true){
    console.log("party till you drop");
}else{
    console.log("cant go to party");
}

var hasMoney = true;







var x = 2015;
var date = (new Date()).getFullYear();
if(date == x){
    console.log("I'm in the present!");
}else if(date > x){
    console.log("Greetings from the future!")
}else if(date < x){
    console.log("Whoa! Blast from the past!")
}