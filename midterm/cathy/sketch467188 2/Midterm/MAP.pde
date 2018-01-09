//Cathy
class Map {
  PImage map = loadImage("map01.jpg");
  PImage airplane = loadImage("plane1.png");
  float ax; //departure country x cordinate 
  float ay; //departure country y cordinate 
  float bx; //arrival country x cordinate 
  float by; //arrival country x cordinate 
  float time; //airplane fly time 
  float curX; //airplane flying x position 
  float curY; //airplane flying y position 

  //constructor for MAP class
  Map(float ax, float ay, float bx, float by) {
    this.ax= ax;
    this.ay= ay;
    this.bx= bx;
    this.by= by;
    map.resize(1600, 1200);
    airplane.resize(100, 100);
    curX = ax-70;
    curY = ay-50;
  }

//display map
  void display() {
    image(map, 0, 0);
    stroke(0);
    strokeWeight(5);
    fill(255);
    //draw start and end point
    ellipse(ax, ay, 10, 10);
    ellipse(bx, by, 10, 10);
    stroke(#1B95DF);
    strokeWeight(10);
    line(ax, ay, bx, by);
    //move airplane
    if (curX != bx)
    curX += ((bx-70)-curX)/70;
    if (curY != by)
    curY += ((by-50)-curY)/70;
    image(airplane, curX, curY); 
  }


}