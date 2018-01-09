class Keys{
  int x;
  int y;
  PImage img;
  boolean obtained = false;
  
  Keys(int posX, int posY, String imgLoad){ //set up position and display for key
    x = posX;
    y = posY;
    img = loadImage(imgLoad);
  }
  
  void update(){ //display or hide depending whether picked up or not
    if(obtained != true){
      image(img, x, y);
    }
    else{
      noStroke();
      fill(255);
      rect(x, y, img.width, img.height);
    }
  }
  
  int imageWidth(){
    return img.width;
  }
  
  int imageHeight(){
    return img.height;
  }
  
  void taken(){ // if key is taken, change status
    obtained = true;
  }
  
  boolean have(){ //check if key is obtained
    return obtained;
  }
}