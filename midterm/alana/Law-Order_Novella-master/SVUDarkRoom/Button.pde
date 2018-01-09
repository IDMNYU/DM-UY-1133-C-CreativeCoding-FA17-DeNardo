int x;
int y;
int wait;
String name;
boolean rectOver = false;
int fillcolor = 225;
int highcolor = 0;

class button {
  //standard button class 

 button(int tempwait, String tempname, int tempx, int tempy, boolean over) {

  y = tempy;
  x = tempx;
  wait = tempwait;
  name = tempname;

 }

 void display() {
   //renders a blank button to press
  rect(x, y, 150, 50);
  text(name,x+60,y+30);
 }
 
 // this function checks if the mouse is over the button
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+ height) {
    return true;
  } else {
    return false;

  }
}




}