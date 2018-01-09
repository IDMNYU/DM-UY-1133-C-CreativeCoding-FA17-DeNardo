//https://forum.processing.org/two/discussion/17561/how-to-make-the-brush-stroke-change-based-on-the-speed-you-draw-a-line

class Brush {
  
  float speed; // speed of brush stroke
  
  void display(int x, int y, int pX, int pY) {
    strokeCap(ROUND);
    strokeWeight(size);
    if(mousePressed && !thicc) {
      speed = abs(x-pX) + abs(y-pY); // processing forum, changes brush size based on speed of mouse
      size = size + (speed-size) * 0.0178; // processing forum, smooth lines effect
      strokeWeight(size);
      stroke(col);
      line(mouseX,mouseY,pmouseX,pmouseY); // draws line
    }
    else if(mousePressed) {
      strokeWeight(size);
      stroke(col);
      line(mouseX,mouseY,pmouseX,pmouseY); // draws line

    }
  }
}
