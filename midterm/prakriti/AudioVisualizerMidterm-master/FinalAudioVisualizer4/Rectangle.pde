class Rectangle{
  int x, y, color1;
  float l;
  float w;
  
  //rectangle constructor
  Rectangle(int x, float y, float l, float w, int color1){
    this.l = l;
    this.w = w;
    this.x = x; 
    this.y = (int) y;
    this.color1 = color1;
  }
  
  void draw()
  {
    fill(color1,100, 100);
    rect(x, y, l, w);
  }

}