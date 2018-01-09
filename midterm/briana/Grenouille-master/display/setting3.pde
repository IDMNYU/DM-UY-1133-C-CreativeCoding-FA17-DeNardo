class Setting3{
  //ink machine
  Keys k4;
  Frog f2;
  Mice m1;
  Mice m2;
  Blood b1;
  Door d3;
  
  Setting3(){
    f2 = new Frog("toadGod.PNG");
    k4 = new Keys(750, 800, "key4.PNG");
    m1 = new Mice();
    m2 = new Mice();
    b1 = new Blood();
    d3 = new Door(150, 500, "doorSprite3.PNG");
  }
  
  void update(){ //displays objects
    k4.update();
    f2.update(k4.have(), "toadGod2.PNG", 750, 100);
    m1.update(f2.fed());
    m2.update(f2.fed(), 265, 265);
    d3.update();
    b1.update(f2.fed());
    
    if(f2.fed()){
      d3.unlock();
    }
  }
  
  void mp(){ //mousePressed: interact with objects
    if(mouseX < (750 + (k4.imageWidth()/2)) && mouseX > (750 - (k4.imageWidth()/2)) && (mouseY < (800 + (k4.imageHeight()/2)) && mouseY > (800 - (k4.imageHeight()/2)))){ //interact with button
      if(k4.have() != true){
        k4.taken();
      }
    }
  }
  
  String sendMessage(){ //send messages (instructions)
    String ret = "";
    if(mouseX < (750 + (f2.imageWidth()/2)) && mouseX > (750 - (f2.imageWidth()/2)) && (mouseY < (100 + (f2.imageHeight()/2)) && mouseY > (100 - (f2.imageHeight()/2)))){ //frog-snake ink machine dialogue
      if(k4.have() == true){
        ret = "Is that bleeding? You don't want to stick around to find out.";
      }
      else{
        ret = "It's empty: it says 'Press @?&*&! to start ink process.'";
      }
    }
    
    if(mouseX < (750 + (k4.imageWidth()/2)) && mouseX > (750 - (k4.imageWidth()/2)) && (mouseY < (800 + (k4.imageHeight()/2)) && mouseY > (800 - (k4.imageHeight()/2)))){ //button dialogue
      if(k4.have() == true){
        ret = "";
      }
      else{
        ret = "You want to touch it: it's weirdly inky.";
      }
    }
    
    if(mouseX < (150 + (d3.imageWidth()/2)) && mouseX > (150 - (d3.imageWidth()/2)) && (mouseY < (500 + (d3.imageHeight()/2)) && mouseY > (500 - (d3.imageHeight()/2)))){ //door dialogue
      if(f2.fed() != true){
        ret = "The door is locked.";
      }
      else{
        ret = "Someone's singing happy birthday.";
      }
    }
    
    if(mouseX < (750 + (m2.imageWidth()/2)) && mouseX > (750 - (m2.imageWidth()/2)) && (mouseY < (700 + (m2.imageHeight()/2)) && mouseY > (700 - (m2.imageHeight()/2)))){ //ink mouse queen dialogue
      if(f2.fed()){
        ret = "It's just watching you.";
      }
    }
    
    return ret;
  }
  
  boolean d3Open(){ //check if the door is open
    return d3.open();
  }
  
  boolean doorBound(){ //makes sure the door is in bounds when escaping the room
    if(mouseX < (150 + (d3.imageWidth()/2)) && mouseX > (150 - (d3.imageWidth()/2)) && (mouseY < (500 + (d3.imageHeight()/2)) && mouseY > (500 - (d3.imageHeight()/2)))){
      return true;
    }
    else{
      return false;
    }
  }
}