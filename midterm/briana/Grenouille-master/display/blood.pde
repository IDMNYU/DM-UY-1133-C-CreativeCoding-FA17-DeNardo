class Blood{
  PImage[] m = new PImage[25];
  int i = 0;
  int y = 350;
  int r = 0;
  
  Blood(){  
    for(int j = 0; j < 25; j++){
      m[j] = loadImage("sprite2_" + (j+1) + ".png");
    }
  }
  
  void update(boolean free){ //animate blood
    if(free){
      
      noStroke();
      fill(255);
      rect(920, y, (m[i].width+50), (m[i].height+50));
      
      image(m[i], 920, y);
      
      if(y <= 1000 && i < 20 && i >= 7){
        y+= 27;
      }
      i++;
      
      if(i == 25){
        i = 0;
        y = 350;
      }
    }
  }
  
  int imageWidth(){
    return m[1].width;
  }
  
  int imageHeight(){
    return m[1].height;
  }
  
}