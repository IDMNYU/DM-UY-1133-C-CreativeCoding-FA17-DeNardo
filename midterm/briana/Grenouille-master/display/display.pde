//Grenouille: Birthday Surprise
//By: Briana Jones
//Done on Processing

import ddf.minim.*; //import audio
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;

Setting1 s1;
Setting2 s2;
Setting3 s3;
Setting4 s4;

PImage back5;
String word;

int countSetting = 1;
int count = 0; //to keep track whether text is no displayed

void setup(){  
  size(1500, 1000);
  background(255);
  minim = new Minim(this);
  player = minim.loadFile("scream.wav"); //setup scream
  
  s1 = new Setting1();
  s2 = new Setting2();
  s3 = new Setting3();
  s4 = new Setting4();
}


void draw(){
  if(countSetting == 1){ //execute setting 1
    s1.update();
    if(mousePressed){
      s1.mp(); //if in bounds, interact with environment
    }
    
    noStroke();
    fill(255);
    rectMode(CENTER);          
    rect(750, 0, 1000, 150);
       
    textSize(30);
    fill(50);
    text(s1.sendMessage(), 400, 30); //display text messages
    
    if(s1.d1Open()){ //escape to setting 2
      countSetting++;
      clear();
      background(255);
    }
  }
  
  else if(countSetting == 2){ //execute setting 2
    s2.update();
    if(mousePressed){
       s2.mp(); //if in bounds, interact with environment
    }
    
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(750, 0, 1000, 150);
    
    textSize(30);
    fill(50);
    text(s2.sendMessage(), 400, 30); //display text messages
    
    if(s2.d2Open()){ //escape to setting 3
      countSetting++;
      clear();
      background(255);
    }
  }
  
  else if(countSetting == 3){ //execute setting 3
    s3.update();
    if(mousePressed){
       s3.mp(); //if in bounds, interact with environment
    }
    
    word = s3.sendMessage();
    
    if(word != ""){ //to not block blood when no text is displayed
      noStroke();
      fill(255);
      rectMode(CENTER);
      rect(750, 500, 1000, 150);
    
      textSize(30);
      fill(50);
      text(s3.sendMessage(), 350, 500); //display text messages

      count++;
    }
    
    if(count >= 1 && word == ""){ //hides text one laste time so blood can  be shown
      noStroke();
      fill(255);
      rectMode(CENTER);
      rect(750, 500, 1000, 150);
      count = 0;
    }
    
    if(s3.d3Open() && mousePressed && s3.doorBound()){ //escape to setting 4
      countSetting++;
      clear();
      background(255);
    }
  }
  
  else if(countSetting == 4){ //execute setting 3
    s4.update();
    if(mousePressed){
       s4.mp(); //if in bounds, interact with environment
    }
    
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(750, 0, 1400, 150);
       
    textSize(30);
    fill(50);
    text(s4.sendMessage(), 300, 30); //display text messages
    
    if(s4.d4Open() && mousePressed && s4.doorBound()){ //escape to setting 5
      countSetting++;
      clear();
      background(255);
    }
  }
  
  else{
    back5 = loadImage("back5.PNG"); //display depressed frog
    imageMode(CENTER);
    image(back5, 750, 700);
    
    player.play(); //play scream
    text("Grenouille", 650, 100);
  }
}