class images {
  PImage img;
  float x;
  float y;
  String S;

  images(float tempX, float tempY, PImage tempimg, String tempS){
    x=tempX;
    y=tempY;
    img=tempimg;
    S= tempS;
  }
//Code to display the images at a specific location
  void display() {
    image(img, x, y, height/3, width/3);
    
// Position of the mouse is detected
    if (keyPressed) {
      if (mouseX> x && mouseX < x+ width/3) {
        if(mouseY> y && mouseY < y+height/3) {
           fill(51,255,51);
          	textSize(25);
            fill(255,0,0);
            text("Shocked the crowd with voice & made 5 million in first year of fame", 445,200);
          	text("Also very religious, spiritual, strongheaded", 45, 100);
          	textSize(17);
         	 text(S,x-40, y);
        }
      }
    }
  }
}