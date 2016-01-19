
function draw() {

    var canvas = document.getElementById("myCanvas");
    var ctx = canvas.getContext("2d");
    var w = window.innerWidth;
    var h = window.innerHeight;
    
    canvas.width = w;
    canvas.height = h;
    
    var color = "#000000"

    var y = pattern.length
    
    for(var j = 0; j < y; j++) {
	var x = pattern[j].length
	for(var i = 0; i < x; i++) {
	    if (pattern[j][i] == 0) {
		color = "#000000"
	    }
	    if  (pattern[j][i] == 1) {
		color = colors[j]
	    }
	    ctx.fillStyle = color;
	    ctx.fillRect (w/x*i,h/y*j,w/x, h/y);
	}
    }
}

function wait() {
    setTimeout(function() {location.reload();}, 2000);
}

wait()
draw()

