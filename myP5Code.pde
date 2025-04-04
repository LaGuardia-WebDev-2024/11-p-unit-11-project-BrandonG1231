var snowX = [100, 120, 160, 200];
var snowY = [50, 70, 40, 20];

var drawCloud = ["🌨", "☁"]; // Cloud Variable
  var cloudX = [300, 40];
  var cloudY = [200, 200];

var XmasTreeImg = loadImage("https://pnghq.com/wp-content/uploads/christmas-tree-%E2%80%8B-png-photo.png");

setup = function() {
   size(600, 450); 
   background(164, 212, 255);



    var SnowFlakes = ["❄", "❆", "⁂"]
     fill(255, 255, 255);
       text(SnowFlakes[0], 30, 120);
       text(SnowFlakes[1], 60, 140);
       text(SnowFlakes[2], 20, 50);

       for (var Snowflake1 = 0; Snowflake1 < 100; Snowflake1++) {
          text(SnowFlakes[0], random(0, 600), Snowflake1*30);
       }

  textSize(300); // Clouds
    text(drawCloud[0], cloudX[0], cloudY[0]);
    text(drawCloud[1], cloudX[1], cloudY[1]);


   fill(255,255,255);
   rect(-10, 300, 610, 150);

   drawSnowman(420, 300);
   drawSnowman(100, 300);
};

draw = function() { // Christmas Tree
     image(XmasTreeImg, 164, 40, 200, 300);
}

  var drawSnowman = function(SnowmanX, SnowmanY, SnowmanColor){
  fill(SnowmanColor);
    ellipse(SnowmanX, SnowmanY, 100, 100); // Bottom Body
    ellipse(SnowmanX, SnowmanY-70, 70, 70); // Medium Body
    line(SnowmanX-80, SnowmanY-100, SnowmanX-34, 220); // Left Arm
    line(SnowmanX+80, SnowmanY-100, SnowmanX+34, 220); // Right Arm
    ellipse(SnowmanX, SnowmanY-120, 50, 50); // Top Body
    ellipse(SnowmanX-10, SnowmanY-130, 7, 7); // Left Eye
    ellipse(SnowmanX+10, SnowmanY-130, 7, 7); // Right Eye
    ellipse(SnowmanX, SnowmanY-120, 4, 4); // Nose
  };