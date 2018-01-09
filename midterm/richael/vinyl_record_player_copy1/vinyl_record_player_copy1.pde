import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
FFT fft;
BeatDetect beat;

balls ba;

String str = "Alexander Lewis - Jane.mp3"; 
PFont f; 
int x, y; 
float v;
float eRadius=20;

void setup() {
  
  //buttons
  size(800,600);
  background(140,180,170);
  fill(39,79,69);
  noStroke();
  ellipse(620,120,50,50);
  ellipse(700,120,50,50);
    
  fill(255);
  stroke(255);
  strokeWeight(5);
  strokeJoin(ROUND);
  triangle(633,120,612,109,612,131);
  rect(690,108,5,23,5,5,5,5);
  rect(705,108,5,23,5,5,5,5);
   
  f = createFont("Hanzipen TC", 28, true); 
  x = width;
  y = 60; 
  textFont(f);
  
  minim = new Minim(this);
  player = minim.loadFile("Alexander Lewis-Jane.mp3");
  fft = new FFT(player.bufferSize(), player.sampleRate() );
  beat = new BeatDetect();
  eRadius = 300;

  frameRate(12);
  
  ba = new balls();
  
}


void draw() {

  if (mousePressed){
    if (mouseX>595 && mouseX<645 && mouseY>95 && mouseY<145){
      player.loop();
    }
    else if (mouseX>675 && mouseX<725 && mouseY>95 && mouseY<145){
      player.pause();
    }
  }
     
  fft.forward(player.mix);
 
  ba.draw();
    
  //text&textbox
  fill(230);
  noStroke();
  rectMode(CENTER);
  rect(660, 50, 215, 40);
  fill(60,60,60);
  text(str, x, y);
  x -= 3;
  if (x == 200){ x = width; }
  fill(140,180,170);
  noStroke();
  strokeJoin(MITER);
  rect(500,50,102,40);
  rect(789,50,40,40); 
  noFill();
  stroke(255);
  strokeWeight(3);  
  rect(660, 50, 215, 40);
   
  noStroke(); //record player 
  fill(random(0,50),random(0,50),random(0,50)); 
  ellipse(180,190,700,700);
  
  beat.detect(player.mix);
  float a = map(eRadius, 300, 350, 60, 255);
  noStroke();
  fill(60,255,0,a);
  if (beat.isOnset()){
    eRadius = 350;
  }
  ellipse(180, 190, eRadius, eRadius);
  eRadius *= 0.95;
  if (eRadius<300){
    eRadius = 300;
  }
 
  fill(0); //vinyl
  ellipse(46,51,50,50);
  ellipse(182,192,270,270);
  fill(189,205,159);
  ellipse(45,50,50,50);  
  ellipse(180,190,270,270);
    
  noFill(); //lines
  strokeWeight(1);
  stroke(209,225,179);
  ellipse(180,190,200,200);
  ellipse(180,190,160,160);
  ellipse(180,190,135,135);
  ellipse(180,190,110,110);
 
  pushMatrix(); //rotating movement
  translate(180,190);
  ellipseMode(CENTER);
  fill(255);
  stroke(189,205,159);
  strokeWeight(5);
  rotate(v);
  arc(0,0,260,260,-PI/20,PI/20*2,PIE);
  arc(0,0,260,260,PI/20*2,PI/20*3,PIE);  
  arc(0,0,260,260,PI/20*19,PI/20*22,PIE);  
  arc(0,0,260,260,PI/20*22,PI/20*23,PIE);  
  popMatrix();
  v+=PI/18;
  
  noStroke(); //label
  fill(40,40,40);
  ellipse(180,190,105,105);
  fill(227,133,91);
  ellipse(180,190,85,85);
  
  fill(59,27,43); //shade
  ellipse(179,189,12,12);
  ellipse(44,49,11,11);

  fill(200,200,200); //hole
  ellipse(180,190,10,10);
  ellipse(45,50,10,10); 
  
  toneArm();

  retrolines();
  
}


public void retrolines(){
 
  int x = 0;
  int y = 0;

  noFill();
  strokeWeight(4);
  stroke(220,240,230);
  arc(180, 190, 380, 380, PI/5, PI/12*5);
  strokeWeight(5);
  stroke(220,240,230);
  arc(180, 190, 430, 430, PI/6, PI/24*11);
  
  if(beat.isOnset()) {
     x = -25;
     y =10;     
  } 
  else {
     noFill();
     strokeWeight(7);
     stroke(220,240,230);
     arc(180, 190, 486, 486, PI/7, PI/36*17);   
     strokeWeight(9);     
     stroke(220,240,230);
     arc(180, 190, 541, 541, PI/8, PI/2);
  }

  noFill();
  strokeWeight(7);
  stroke(242,180,68);
  arc(180+x ,190+y, 480+x, 480+y, PI/7, PI/36*17);
  strokeWeight(8);
  stroke(193,83,71);
  arc(180+x,190+y, 536+x, 536+y, PI/8, PI/2);

}


public void toneArm(){
  
  fill(20,20,20);
  stroke(20,20,20);
  strokeWeight(4);
  strokeJoin(ROUND);
  quad(470, 129, 450, 120, 480, 0, 510, 0);
  
  if(frameCount%2==0) {    
     triangle(450, 120, 470, 129, 280, 196);
  }     
  else {     
     triangle(450, 120, 470, 129, 283, 198);
  }
  
}