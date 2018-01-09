class Frog{
  PImage img;
  boolean fully = false;
  
  Frog(String head){
    img = loadImage(head);
  }
  
  void update(boolean full, String head, int x, int y){ //display image, but if task completed, change image
    if(full){
      img = loadImage(head);
      fully = true;
    }
    
    image(img, x, y);
  }
  
  int imageWidth(){
    return img.width;
  }
  
  int imageHeight(){
    return img.height;
  }
  
  boolean fed(){ //check if task completed
    return fully;
  }
}