class Circle {
  int x, y;
  float r;
  int color1;
  
  
  //circle constructor
  Circle(int x, int y, float r, int color1){
    this.x = x;
    this.y= y;
    this.r = r;
    this.color1= color1;
  }
  
  void draw()
  {
    //background(500-x, 0, 100);
    fill(color1, 100, 100,x);
    ellipse(x, y, r, r);
    
  }
  
}