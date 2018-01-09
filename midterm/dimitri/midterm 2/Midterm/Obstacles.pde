class Obstacles {
  float rx;
  float ry;
  float rw;
  float rh;
  float s = 0;

  Obstacles(float tempRX, float tempRY, float tempRW, float tempRH) {
    rx = tempRX+160;
    ry = tempRY;
    rw = tempRW;
    rh = tempRH;
  }

  void displayObstacle() {
    fill(100, 180, 100);
    rect(rx, ry, rw, rh);
  }
  void moveObstacle() {

    rx = rx - 4;
    if (rx < - 300) {
      rx = 500 ;
    }
  }
  void collision(float bx, float by) {


    double actualdistance = sqrt((float)(Math.pow(bx - rx, 2) + Math.pow(by - ry, 2)));
    int colisiondistance = (6/2 + 6/2);
    
    fill(0);
    text("Score: " + s, 432, 20); 
    s = s + 0.02 ;

    if (actualdistance<colisiondistance) {
      exit();
    }
  }
}