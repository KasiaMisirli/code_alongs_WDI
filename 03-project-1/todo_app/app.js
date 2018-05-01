console.log("this");
// .addEventListener("click",function() {
//     firstListItem.style.textDecoration="line-through"
// })

//document.querySelectorAll("li")[0]; accesing first item


//find first list item
// var listItems = document.querySelectorAll("li");
// //add event handler for click
// listItems.forEach(function(listItem) {
//     var nyName="DT"
//     console.log(listItem.textContent);
//     listItem.addEventListener("click",function() {
//         var age = 15;
//         listItem.style.textDecoration="line-through";
//     });
// });
//inside function can acces the myName, outside function can aslo access myName
//outside function cant acces the age var inside the inner function
//-------------------------------------------------

// //find first list item
// var listItems = document.querySelectorAll("li");
// //add event handler for click
// listItems.forEach(function(listItem) {
//     console.log(listItem.textContent);
//     listItem.addEventListener("click",function() {
//         listItem.style.textDecoration="line-through";
//     });
// });
//------------------------------------------------
//below is another option
// var markAsDone = function(){
//     event.target.style.textContent = "line-through";
// }

// for(var i=0;i<listItems;i++){
//     listItems[i].addEventListener("click",markAsDone);
// }

//----------------------------------------------
// cross the clicked item
// var listItems = document.querySelectorAll("li");
// listItems.forEach(function(listItem) {
//     console.log(listItem.textContent);
//     listItem.addEventListener("click",function() {
//         console.log(event.target);
//         event.target.style.textDecoration="line-through";
//     });
// });
//for(var i=0;i<listItems;i++){
    //     listItems[i].addEventListener("click",markAsDone);
    // }
//css attribute selector
//-------------------------------------------
//adding class with line-through to clicked elements
// var listItems = document.querySelectorAll("li");
// listItems.forEach(function(listItem) {
//     console.log(listItem.textContent);
//     listItem.addEventListener("click",function() {
//         event.target.classList.add("done");
//     });
// });
//for(var i=0;i<listItems;i++){
    //     listItems[i].addEventListener("click",markAsDone);
    // }
//css attribute selector
//also have .className
//---------------------------------------------
//1. find the span
//2.give it a name
//3. add the crossed elemtns to total number of crossed elements
//all below are crossed:
//software development process
// cannot fit bug in homework
// crisis of confidence
// question career
// question life
// oh it was a type.cool
// 6 completed

// var completedItemsSpan = document.querySelector("span");
// var listItems = document.querySelectorAll("li");
// listItems.forEach(function(listItem) {
//     //console.log(listItems.textContent);
//     listItem.addEventListener("click",function() {
//         event.target.classList.add("done");
//         completedItemsSpan.textContent = document.querySelectorAll(".done").length;
//     });
// });
// // for(var i=0;i<listItems;i++){
// //         listItems[i].addEventListener("click",markAsDone);
// //     }

// listItems.forEach(function(item){
//     item.addEventListener("click",markAsDone);
// });

//----------


var listItems = document.querySelectorAll("li");
var completedItemsSpan = document.querySelector("span");

var markAsDone = function(event){
    //if the element has a class of done already
    //classList is an array so we can look inside it
    if(event.target.classList.contains("done") === true){
        //remove the class
        event.target.classList.remove("done");
    }else{
        //add the class
        event.target.classList.add("done");
    }
    completedItemsSpan.textContent = document.querySelectorAll(".done").length;
}


listItems.forEach(function(item){
    item.addEventListener("click",markAsDone);
});

//removing class
// document.body.classList.remove("special")
//document.body.classList.add("special");