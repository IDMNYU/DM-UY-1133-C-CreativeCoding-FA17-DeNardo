//music
var beats = [];
var analyzer;

//background
var gridfader = 0.5;
var axisfader = 4;
var textfader = 255;

var mouseCount = 0;

//rainbow rays
var pg;
var xdirection = 1;  // Left or Right
var ydirection = 1;  // Top to Bottom


function preload() {
  beats[0] = loadSound("autosinfonie.wav");
  beats[1] = loadSound("spacious.wav");
}
  

function setup() {
  createCanvas(600,600);
  background(0);
  
  //music
  analyzer = new p5.Amplitude();
  analyzer.setInput(beats[0]);

  
  //offscreen buffer canvas
  pg = createGraphics(600,600);
  
  frameRate(30);
  
  //initial position of moving rays
  xpos = width/2;
  ypos = height/2;

  
}

function draw() {
  background(0);

  // get amplitude of beat
  var amp = (analyzer.getLevel())*125;
   
  
  //////////////////////////////////////  grid/background
  
  //horizontal gridlines
  for (var y =0; y < 600; y+=20) {
    stroke(255);
    strokeWeight(gridfader);
    line(0,y,width,y);
  }
  //vertical gridlines
  for (var x =0; x < 600; x+=20) {
    stroke(255);
    strokeWeight(gridfader);
    line(x,0,x,height);
  }
    
  // axis
  strokeWeight(axisfader);
  stroke(random(255),random(255),random(255));
  line(300,0,300,height);
  line(0,height/2,width,height/2);
  
  // text
  var xaxis = "rate of beat 1";
  noStroke();
  fill(textfader);
  text(xaxis, 480, 280, 120, 20);
  
  var yaxis = "rate of beat 2";
  noStroke();
  fill(textfader);
  text(yaxis, 305, 0, 120, 20);
  
  ///////////////////////////////////////////////////
  
  //Interactive Part
  
  //first set of rainbow rays, controlled by user mouse
  for (var a=0; a < 600; a+=15) {
    noFill();
    strokeWeight(4);
    stroke(random(255),random(255),random(255));
    bezier(mouseX,mouseY,mouseX,mouseY,mouseX,mouseY,a,300); 
  }
   for (var a=0; a < 600; a+=15) {
    noFill();
    strokeWeight(4);
    stroke(random(255),random(255),random(255));
    bezier(mouseX,mouseY,mouseX,mouseY,mouseX,mouseY,width/2,a); 
  }
  
  ///////////////////////////////////////////////////////////////
  
  //Static Part
  
  //// capture the last x & y coordinate once the mouse is pressed for smooth
  //// transition into moving rays coordinates
  if (mouseIsPressed) {
    xpos = pmouseX;
    ypos = pmouseY;
  }
  
  // When the mouse is clicked (however many times), the program takes over and
  // is no longer interactive
  if (mouseCount > 0) {
    
    
    //// fade background
    if ((gridfader > 0.005) && (axisfader > 0.02))  {
      gridfader-=0.0025;
      axisfader-=0.02;
      textfader -= 1.275;
    }
    
    ////set up transparency rectangle on buffer canvas for fading illusion
    pg.noStroke();
  	pg.fill(0,8);
    pg.rect(0,0,width,height)
    image(pg,0,0);
    
    //// speed of moving rays determined by beat amplitude 
    var xspeed = 2.8*amp;  // Speed of the shape
    var yspeed = 2.2*amp;  // Speed of the shape
    
    //// position of moving rays
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
    
    
    //// boundaries for moving rays
    if (xpos > 500 || xpos < 100) {
      xdirection *= -1;
    }
    if (ypos > 500 || ypos < 100) {
      ydirection *= -1;
    }
  }
  
    
    //// second set of rainbow rays, drawn on offscreen buffer canvas
    for (var a=0; a < 600; a+=15) {
      pg.noFill();
      pg.strokeWeight(4);
      pg.stroke(random(255),random(255),random(255));
      pg.bezier(xpos,ypos,xpos,ypos,xpos,ypos,a,300);
    }
    for (var a=0; a < 600; a+=15) {
      pg.noFill();
      pg.strokeWeight(4);
      pg.stroke(random(255),random(255),random(255));
      pg.bezier(xpos,ypos,xpos,ypos,xpos,ypos,width/2,a);
    }
  }
  


function mousePressed() {
  
  //// pressing the mouse at different points on the canvas allows
  //// the user to select an amplitude for the two beats to play at
  //maps rate of beat
  var speedx = map(mouseX, 0.1, width, 0, 2);
  speedx = constrain(speedx, 0.5, 4);
    
  var speedy = map(mouseY, 0.1, height, 0, 2);
  speedy = constrain(speedy, 0.5, 4);

  beats[0].rate(speedx);
  beats[1].rate(speedy);
  
  beats[0].play();
  beats[1].play();
  
  //notifies program that the mouse has been pressed
  mouseCount+=1;
  
}


function keyPressed() {
  //// resets program, starts fresh
  beats[0].stop();
  beats[1].stop();
  
  ////resets background
  gridfader = 0.5;
  axisfader = 4;
  textfader = 255;
  
  ////erases number of times mouse has been clicked
  mouseCount = 0;
  
  //clears buffer
  pg.clear();
  
  //resets inital position of moving rays
  xpos = width/2;
  ypos = height/2;
}

////cited cources:
//// https://p5js.org/examples/sound-measuring-amplitude.html
//// https://processing.org/examples/bounce.html
///  https://p5js.org/examples/structure-create-graphics.html