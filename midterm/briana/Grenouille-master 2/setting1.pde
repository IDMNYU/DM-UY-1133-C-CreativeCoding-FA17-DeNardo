class Setting1{
  //mouse wizard party
  
  Door d1;
  Cheese c1;
  Mouse m1;
  
  int aggitate = 0;

  boolean mp = false; //keeps track whether clicked

  PImage back1;

  Setting1(){
    d1 = new Door(1350, 500, "doorSprite.PNG");
    c1 = new Cheese("cheese.PNG", "eaten.PNG");
    m1 = new Mouse();
  
    back1 = loadImage("back1.PNG");
    imageMode(CENTER);
    image(back1, 750, 450);
  }


  void update(){ //displays objects
    c1.update(mp, 1200, 800);
    d1.update();
    m1.update();
  }

  void mp(){ //mousePressed: interact with objects
    if(mouseX < (1200 + (c1.imageWidth()/2)) && mouseX > (1200 - (c1.imageWidth()/2)) && (mouseY < (800 + (c1.imageHeight()/2)) && mouseY > (800 - (c1.imageHeight()/2)))){ //interact with cheese
      mp = true;
    }
    if(mouseX < (300 + (m1.imageWidth()/2)) && mouseX > (300 - (m1.imageWidth()/2)) && (mouseY < (900 + (m1.imageHeight()/2)) && mouseY > (900 - (m1.imageHeight()/2)))){ //interact with mouse
      m1.update(c1.eaten());
    }
    
    if(mouseX < (1350 + (d1.imageWidth()/2)) && mouseX > (1350 - (d1.imageWidth()/2)) && (mouseY < (500 + (d1.imageHeight()/2)) && mouseY > (500 - (d1.imageHeight()/2)))){ //interact with door
      if(m1.checkFull()){
        d1.unlock();
      }
    }
  }
  
  String sendMessage(){ //send messages (instructions - dialogue)
    String ret = "";
    
    if(mouseX < (1200 + (c1.imageWidth()/2)) && mouseX > (1200 - (c1.imageWidth()/2)) && (mouseY < (800 + (c1.imageHeight()/2)) && mouseY > (800 - (c1.imageHeight()/2)))){ //cheese dialogue options
      if(c1.eaten()){
        ret = "You want cake now.";
      }
      else{
        ret = "It's staring to stink.";
      }
    }
    
    if(mouseX < (300 + (m1.imageWidth()/2)) && mouseX > (300 - (m1.imageWidth()/2)) && (mouseY < (900 + (m1.imageHeight()/2)) && mouseY > (900 - (m1.imageHeight()/2)))){ //mouse leader dialogue options
      if(m1.checkFull()){
        ret = "The mouse is eating. You hear something.";
      }
      else{
        ret = "The mouse's stomach growls. He's staring.";
      }
    }
    
    if(mouseX < (1350 + (d1.imageWidth()/2)) && mouseX > (1350 - (d1.imageWidth()/2)) && (mouseY < (500 + (d1.imageHeight()/2)) && mouseY > (500 - (d1.imageHeight()/2)))){ //door dialogue options
      if(m1.checkFull() != true){
        ret = "The door is locked.";
      }
      else{
        ret = "Is that scratching?";
      }
    }  
    
    if( (mouseX>400 && mouseX<600) && (mouseY>300 && mouseY<750)){ //Second-in-command dialogue options
      if(m1.checkFull()){
        if(aggitate <= 500){
          ret = "Go away. *ribbet";
          aggitate++;
        }
        else if(aggitate > 500 && aggitate < 1000){
          ret = "Please leave. There's a door right there. *ribbet";
          aggitate++;
        }
        else if(aggitate >= 1000 && aggitate <= 2000){
          ret = "Why. Why waste your time like this. *ribbet";
          aggitate++;
        }
        else{
          ret = "*croak";
        }
      }
      else{
        ret = "Feed him. Feed our saviour. *ribbet";
      }
    }
    
    if( (mouseX>700 && mouseX<825) && (mouseY>400 && mouseY<750)){ //Soldier mouse dialogue options
      if(m1.checkFull()){
        if(aggitate >= 2000){
          ret = "Why would you do that? You've scared him.";
        }
        else{
          ret = "I'm not allowed to talk to you. *ribbet";
        }
      }
      else{
        ret = "Talk to our holy father about ribbet cause. *ribbet";
      }
    }
    
    return ret;
  }
  
  boolean d1Open(){ //checks if the door is open
    return d1.open();
  }
}