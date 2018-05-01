var bowl = document.querySelector(".bowl");

// var effect = new Audio ("plop.wav")
// effect.play

var poop = function(){
    bowl.style.backgroundColor="darkolivegreen";
    bowl.style.height = "600px";
}


bowl.addEventListener("click",poop);


var poop = function(){
    bowl.classList.add("poop");  //no need for dot because we said its a class
}