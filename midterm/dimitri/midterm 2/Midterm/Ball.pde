class Ball {
  float bx;
  float by;
  float r;
  float gravity = 2;
  float speed = -5; 
  
  float actualdistance;
  float colisiondistance;
  
  boolean up = true;

  Ball(float tempX, float tempY, float tempR) {
    bx = tempX;
    by = tempY;
    r = tempR;
  }

  void displayBall() {
    fill(100, 180, 200);
    ellipse(bx, by, r, r);
    noStroke();
  }

  void moveBall() {
    if (keyCode == UP) {

      if (up) {
        by = by + speed;

        if (by < 230) {
          up = false;
        }
      } else {
        by = by - speed;
 
        if (by > 268) {
          by = 268;
          up = true;
          keyCode = DOWN;
        }
      }
    }
  }

  
  
}