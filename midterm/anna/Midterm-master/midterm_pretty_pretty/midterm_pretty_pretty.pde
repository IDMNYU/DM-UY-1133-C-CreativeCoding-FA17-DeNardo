Line l;
Line[] lines=new Line[25];
Date d;
Coordinates c;

void setup(){
  size(1000,600);
        for (int i = 0; i < lines.length; i++) {
    lines[i] = new Line();
}
  l=new Line();
  d=new Date();
  c=new Coordinates();
}

void draw(){
    background(255);
    for (int i = 0; i < lines.length; i++) {
  lines[i].display();
    }
  d.display();
  c.display();
}