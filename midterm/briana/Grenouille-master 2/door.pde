class Door{
  int x;
  int y;
  PImage img;
  boolean unlocked = false;
  
  Door(int posX, int posY, String door){ //set up position and set up display of door
    x = posX;
    y = posY;
    img = loadImage(door);
  }
  
  void update(){ //displays door
    image(img, x, y);
  }
  
  boolean open(){ //sends whether the door is locked or not
    return unlocked;
  }
  
  void unlock(){ //unlock the door
    unlocked = true;
  }
  
  int imageWidth(){
    return img.width;
  }
  
  int imageHeight(){
    return img.height;
  }
}