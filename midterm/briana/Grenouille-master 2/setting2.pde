class Setting2{
  //tadpole sacrifice
  
  Keys k1;
  Keys k2;
  Keys k3;
  Door d2;
  Frog f1;
  
  PImage back2;
  int keysHaved = 0;
  boolean allKeys = false;
  
  Setting2(){
    k1 = new Keys(1000, 900, "key1.PNG");
    k2 = new Keys(750, 950, "key2.PNG");
    k3 = new Keys(500, 900, "key3.PNG");
    f1 = new Frog("head1.PNG");
    d2 = new Door(750, 300, "doorSprite2.PNG");
  }
  
  void update(){ //displays objects
    back2 = loadImage("back2.PNG"); //loads new background
    imageMode(CENTER);
    image(back2, 750, 450);
    
    k1.update();
    k2.update();
    k3.update();
    f1.update(allKeys, "head2.PNG", 750, 700);
    d2.update();
  }
  
  void mp(){ //mousePressed: interact with objects
    if(mouseX < (1000 + (k1.imageWidth()/2)) && mouseX > (1000 - (k1.imageWidth()/2)) && (mouseY < (900 + (k1.imageHeight()/2)) && mouseY > (900 - (k1.imageHeight()/2)))){ //interact with key1
      if(k1.have() != true){
        k1.taken();
        keysHaved++;
      }
    }
    
    if(mouseX < (750 + (k2.imageWidth()/2)) && mouseX > (750 - (k2.imageWidth()/2)) && (mouseY < (950 + (k2.imageHeight()/2)) && mouseY > (950 - (k2.imageHeight()/2)))){ //interact with key2
      if(k2.have() != true){
        k2.taken();
        keysHaved++;
      }
    }
    
    if(mouseX < (500 + (k3.imageWidth()/2)) && mouseX > (500 - (k3.imageWidth()/2)) && (mouseY < (900 + (k3.imageHeight()/2)) && mouseY > (900 - (k3.imageHeight()/2)))){ //interact with key3
      if(k3.have() != true){
        k3.taken();
        keysHaved++;
      }
    }
    
    if(mouseX < (750 + (f1.imageWidth()/2)) && mouseX > (750 - (f1.imageWidth()/2)) && (mouseY < (700 + (f1.imageHeight()/2)) && mouseY > (700 - (f1.imageHeight()/2)))){ //interact with frog
      if(keysHaved == 3){
        allKeys = true;
        keysHaved++;
      }
    }
    
    if(mouseX < (750 + (d2.imageWidth()/2)) && mouseX > (750 - (d2.imageWidth()/2)) && (mouseY < (300 + (d2.imageHeight()/2)) && mouseY > (300 - (d2.imageHeight()/2)))){ //interact with door
      if(f1.fed()){
        d2.unlock();
      }
    }
  }
  
  String sendMessage(){ //send messages (instructions)
    String ret = "";
    
    if(mouseX < (1000 + (k1.imageWidth()/2)) && mouseX > (1000 - (k1.imageWidth()/2)) && (mouseY < (900 + (k1.imageHeight()/2)) && mouseY > (900 - (k1.imageHeight()/2)))){ //key1 dialogue
      if(k1.have() != true){
        ret = "It sadly squeaks.";
      }
    }
    
    if(mouseX < (750 + (k2.imageWidth()/2)) && mouseX > (750 - (k2.imageWidth()/2)) && (mouseY < (950 + (k2.imageHeight()/2)) && mouseY > (950 - (k2.imageHeight()/2)))){ //key2 dialogue
      if(k2.have() != true){
        ret = "It shrieks in your ear.";
      }
    }
    
    if(mouseX < (500 + (k3.imageWidth()/2)) && mouseX > (500 - (k3.imageWidth()/2)) && (mouseY < (900 + (k3.imageHeight()/2)) && mouseY > (900 - (k3.imageHeight()/2)))){ //key3 dialogue
      if(k3.have() != true){
        ret = "It makes splooshy noises.";
      }
    }
    
    if(mouseX < (750 + (f1.imageWidth()/2)) && mouseX > (750 - (f1.imageWidth()/2)) && (mouseY < (700 + (f1.imageHeight()/2)) && mouseY > (700 - (f1.imageHeight()/2)))){ //frog dialogue
      if(keysHaved == 0){
        ret = "It's staring into the void.";
      }
      else if(keysHaved == 1){
        ret = "You hear a low murmur.";
      }
      else if(keysHaved == 2){
        ret = "It's now vibrating.";
      }
      else if(f1.fed()){
        ret = "It's eyes are glowing: you want to leave. The tadpoles are staring.";
      }
      else{
        ret = "You hear a latch open.";
      }
    }
      
    if(mouseX < (750 + (d2.imageWidth()/2)) && mouseX > (750 - (d2.imageWidth()/2)) && (mouseY < (300 + (d2.imageHeight()/2)) && mouseY > (300 - (d2.imageHeight()/2)))){ //door dialogue
      if(f1.fed() != true){
        ret = "The door is locked.";
      }
      else{
        ret = "Is that screaming?";
      }
    }
    
    return ret;
  }
  
  boolean d2Open(){ //check if the door is open
    return d2.open();
  }
}