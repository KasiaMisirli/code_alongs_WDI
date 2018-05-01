//document.querySlector
//document.querySelectorAll
//textContent  <h1>text content</h1>
//value- toast <input type = "text">

//tip1: input gives yout string
//tip 2 : script runs straight away 

var num1Input = document.querySelector(".num1");
var num2Input = document.querySelector(".num2");

var calcBtn = document.querySelector(".calc-btn");
var resultSpan = document.querySelector(".result");
//functions are just values/thing/objects

//event function
var bam = function(){
    var total = Number(num1Input.value) + Number(num2Input.value);

    //get the value from first imput
    //get the vaue from 2nd input
    //add it
    //set text content of span to result

    console.log("total :",total);
}
calcBtn.addEventListener("click", bam);