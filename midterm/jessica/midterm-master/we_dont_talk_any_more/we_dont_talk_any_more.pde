//midterm project
//"We Dont Talk Any More"
//by: Jessica Song
 
 
 Memory []memory = new Memory [9];
 PImage bg;
 PImage cur;
 PImage ph1,ph2,ph3;
 int imgX,imgY;
 int mX,mY;

 
 
 //sound
import processing.sound.*;
SoundFile file;



void setup(){
  size(1027,580);
  bg = loadImage ("we.png");//loadimage
  cur = loadImage ("bu.png");
  
  //load photos
  ph1 = loadImage ("ph1.png");
  ph2 = loadImage ("ph2.png");
  ph3 = loadImage ("ph3.png");
  
  //load bgm
 
  file = new SoundFile(this, "WeDon'tTalkAnymore.mp3");
  
  //memory
  memory[0]=new Memory(155,474,"That Restaurant",2);
  memory[1]=new Memory(923,298,"Your Smile",1);
  memory[2]=new Memory(886,77,"Your Jokes",1);
  memory[3]=new Memory(552,400,"That Movie",2);
  memory[4]=new Memory(333,99,"Your Texts",1);
  memory[5]=new Memory(911,511,"Your Cologne",2);
  memory[6]=new Memory(398,327,"Our Streaks",2);
  memory[7]=new Memory(732,168,"That kiss",1);
  memory[8]=new Memory(250,390,"Your hug",2);
  
}

//
void draw(){
  //bg
 background(253,248,26);
 if(imgX>width && imgY>height){
   background(bg);
 
 }


if (key == 'n'){
  fill(0);
  rect(0,0,width,height);
}
 
 
 //cursor
 noCursor();
 image(cur,mouseX,mouseY);
 


 
 //display bubbles
 for(int i=0; i<memory.length; i++){
 memory[i].display();
 memory[i].fall();
 
 
 //photo
 imageMode(CENTER);
 if(mousePressed){
   imgX = mouseX - mX;
   imgY = mouseY -mY;
 }
 //display photo
 
 image(ph2,212+imgX,height/2+imgY);
 image(ph1,width/2+imgX,height/2+imgY);
 image(ph3,820+imgX,height/2+imgY);
 
 //message
  textSize(38);
  fill(0);
   if(mousePressed == true && imgX<width && imgY<height){
     text("What was all of it for (Press X)",238,550);
   }  
   else if (imgX>width && imgY>height){
     text("Oh, its such a Shame (mouseDragged)",188,550);
     
     text("Get you out of by brain (Press N)",238,150);
   }
   }
 }
 
 



void mousePressed(){
  mX = mouseX - imgX;
  mY = mouseY -imgY;
}


void keyPressed(){
  if(key == 'x'){
    file.play();
   imgX = 2000;
   imgY = 2000;
 
  }
  //
  else if (key == 'n'){
    background(0);
    
    
  }
  
}

void mouseDragged(){
  if(imgX>width && imgY>height){
    for(int i=0; i<memory.length; i++){
   memory[i].pop();
 
  }

}
}

class Memory {
  int x;//bubble position x
  float y;//bubble position y
  String text; //text show on bubble
  float Yspeed;//speed
 
  
  Memory(int tempX, int tempY, String tempT, float yspeed){
    x= tempX;
    y= tempY;
    text = tempT;
    Yspeed = yspeed;
    
  }
  
  //draw memory bubble
  void display (){
    fill(213,240,247,63);
    stroke(0,0,0,127);
    strokeWeight(3);
    ellipse(x,y,250,188);
    textSize(20);
    fill(81,176,234);
    text(text,x-63,y);
  }
  
  //bubble fall
  void fall(){
    y = y+ Yspeed;
    if (y>height){
      y = 0;
    }
  }
  
  //bubble pop
  void pop(){
    //change text
    textSize(28);
    fill(0);
    text("NO",x-40,y);}
    }
      
    
  