class Mice{
  PImage[] m = new PImage[11];
  int i = 0;
  int x = 0;
  int r = 0;
  
  Mice(){  
    for(int j = 0; j < 11; j++){
      m[j] = loadImage("sprite_" + (j+1) + ".png");
    }
  }
  
  void update(boolean free){ //animates minion mice
    frameRate(10);
    if(free){
      noStroke();
      fill(255);
      rect(x, 900, m[i].width, m[i].height);
      
      image(m[i], x, 900);
      i++;
      if(i == 11){
        i = 0;
      }
      if(x <= 1600 && i == 0){
        x+=90;
      }
    }
  }
  
  void update(boolean free, int w, int h){ //animates queen mouse, w and h are multipliers that affect image resize
    frameRate(10);
    if(free && r < 11){
      noStroke();
      fill(255);
      rect(750, 700, 3*m[r].width, 3*m[r].height);
      
      m[r].resize(w, h);
      image(m[r], 750, 700);
      r++;
    }
  }
  
  int imageWidth(){
    return m[1].width;
  }
  
  int imageHeight(){
    return m[1].height;
  }
  
}