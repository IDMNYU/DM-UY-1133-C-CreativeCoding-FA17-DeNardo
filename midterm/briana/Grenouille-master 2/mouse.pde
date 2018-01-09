class Mouse{
  PImage imgF;
  boolean cheese = false;
  boolean full = false;
  
  Mouse(){
    imgF = loadImage("m1.PNG");
  }
  
  void update(){
    image(imgF, 300, 900);
  }
  
  void update(boolean cheese){ //displays hungry mouse unless if cheese has been given; then displays mouse "eating:
    if(cheese){
      noStroke();
      
      imgF = loadImage("m2.PNG");
      full = true;
    }
  }
  
  boolean checkFull(){ //check if fed
    return full;
  }
  
  int imageWidth(){
    return imgF.width;
  }
  
  int imageHeight(){
    return imgF.height;
  }
}