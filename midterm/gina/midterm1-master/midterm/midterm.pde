Brush bru;
Paint paints;

float size; // size of brush
color col; // brush color

int sizes = 0; // size of brush
  
boolean thicc = false; // checks to see if brush is set on changing or unchanging brush size
 
void setup() {
  size(800,600);
  smooth();
  background(255);
  
  bru = new Brush();
  paints = new Paint();
}

void draw() {
  
  bru.display(mouseX,mouseY,pmouseX,pmouseY);
  paints.display();
}

void mouseClicked() {
  paints.colorPicker();
  paints.sizePicker();
  paints.clearCanvas();
}
