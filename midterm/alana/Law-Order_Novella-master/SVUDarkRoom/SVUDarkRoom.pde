button button;
Slide slide;
int background = 255;
int slide_number= 0;

void setup() {
// settiing up both my main classes, button and slide
 smooth(8);
 size(800, 600);
 //frameRate(5);
 background(background);
 button = new button(5000, "PRESS", 325, 450, false);
 //button.display();
 slide = new Slide();
//slide.display(slide_number);


}

void mousePressed() {
  //advances slides, when button is pressed
slide_number++;
 //slide.display(slide_number);
}

void draw() {
  //updates slides and renders page number
slide.display(slide_number);
  PFont courierB;
  courierB = createFont("Courier Prime Bold.ttf", 1);
  textFont(courierB);
  textSize(30);
  text( Integer.toString(slide_number) ,  680, 500, 570, 380);
 


}
void keyPressed()
//advances slides with arrow keys
{
  if (keyCode == RIGHT || keyCode == 'D' ) {
  slide_number++;
  } else if (keyCode == LEFT || keyCode == 'A') {
  slide_number--;
  }
}