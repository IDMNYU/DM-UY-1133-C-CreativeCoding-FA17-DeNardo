class Setting4{
  //birthday party
  Keys k5;
  Cheese c2;
  Door d4;
  
  boolean mp = false;
  
  PImage back4;
  
  Setting4(){
    c2 = new Cheese("cake1.PNG", "cake2.PNG"); //cheese cake :P
    k5 = new Keys(150, 900, "key5.PNG");
    d4 = new Door(550, 900, "doorSprite4.PNG");
  }
  
  void update(){ //displays objects
    back4 = loadImage("back4.PNG");
    imageMode(CENTER);
    image(back4, 750, 600);
    
    k5.update();
    c2.update(mp, 300, 800);
    d4.update();
    
    if(c2.eaten()){
      d4.unlock();
    }
  }
  
  void mp(){ //mousePressed: interact with objects
    if(mouseX < (300 + (c2.imageWidth()/2)) && mouseX > (300 - (c2.imageWidth()/2)) && (mouseY < (800 + (c2.imageHeight()/2)) && mouseY > (800 - (c2.imageHeight()/2)))){ //interact with cake
      if(k5.have()){
        mp = true;
      }
    }
    
    if(mouseX < (150 + (k5.imageWidth()/2)) && mouseX > (150 - (k5.imageWidth()/2)) && (mouseY < (900 + (k5.imageHeight()/2)) && mouseY > (900 - (k5.imageHeight()/2)))){ //interact with candle
      if(k5.have() != true){
        k5.taken();
      }
    }
  }
  
  String sendMessage(){ //send messages (instructions)
    String ret = "";
    
    if(mouseX < (300 + (c2.imageWidth()/2)) && mouseX > (300 - (c2.imageWidth()/2)) && (mouseY < (800 + (c2.imageHeight()/2)) && mouseY > (800 - (c2.imageHeight()/2)))){ //cake dialogue
      if(c2.eaten()){
        ret = "Time to open your present!";
      }
      else{
        ret = "It kinda smells like cheese.";
      }
    }
    
    if(mouseX < (550 + (d4.imageWidth()/2)) && mouseX > (550 - (d4.imageWidth()/2)) && (mouseY < (900 + (d4.imageHeight()/2)) && mouseY > (900 - (d4.imageHeight()/2)))){ //present dialogue
      if(c2.eaten() != true){
        ret = "A present! You should make a wish first.";
      }
      else{
        ret = "Who's the sender?";
      }
    }
    
    if(mouseX < (150 + (k5.imageWidth()/2)) && mouseX > (150 - (k5.imageWidth()/2)) && (mouseY < (900 + (k5.imageHeight()/2)) && mouseY > (900 - (k5.imageHeight()/2)))){ //candle dialogue
      if(k5.have() != true){
        ret = "Who left a candle here?";
      }
    }
    
    if(mouseX < 1250 && mouseX > 750 && (mouseY < 900 && mouseY > 550)){ //birthday decoration dialogue
      ret = "A surprise party! Was it your birthday?";
    }
    
    if(mouseX < 800 && mouseX > 450 && (mouseY < 450 && mouseY > 200)){ //abstract-art-that-people-pretend-to-get dialogue
      if(c2.eaten() != true){
        ret = "You appreciate the process involved in making a masterpiece- the contrast!";
      }
      else{
        ret = "You apprec- honestly, you don't get this. Like, What?";
      }
    }
    
    return ret;
  }
  
  boolean d4Open(){
    return d4.open();
  }
  
  boolean doorBound(){
    if(mouseX < (550 + (d4.imageWidth()/2)) && mouseX > (550 - (d4.imageWidth()/2)) && (mouseY < (900 + (d4.imageHeight()/2)) && mouseY > (900 - (d4.imageHeight()/2)))){
      return true;
    }
    else{
      return false;
    }
  }
}