var options = {
    url: "http://localhost:4567/api/dishes",
    method: "get"
}

$.ajax(options).done(function(res){
    res.forEach(function(dish){
        console.log(dish.name);
        var $p = $('<p>');
        $p.text(dish.name)
        $("main").append($p)
    })
})