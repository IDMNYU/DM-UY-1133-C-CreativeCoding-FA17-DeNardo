class Cheese{
  PImage imgC;
  PImage imgE;
  boolean eat = false;
  
  Cheese(String c, String e){
    imgC= loadImage(c);
    imgE = loadImage(e);
  }
  
  void update(boolean mp, int x, int y){ //display image, but if eaten, change display image to "eaten" version
    if(mp != true){
      image(imgC, x, y);
    }
    else if(mp){
      image(imgE, x, y);
      eat = true;
    }
  }

  boolean eaten(){ //check if eaten
    return eat;
  }
  
  int imageWidth(){
    return imgC.width;
  }
  
  int imageHeight(){
    return imgC.height;
  }
}