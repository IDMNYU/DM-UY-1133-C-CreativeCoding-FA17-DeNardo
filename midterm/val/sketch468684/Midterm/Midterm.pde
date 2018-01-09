//Name: Valentina Acero
//DM-UY 1133 Midterm 
// Program which focuses on the use of text & images
// Point of view narrative:"Looking Beyond the Superficial"
// UI features include mouse and key presses.


images img;
images img1;
images img2;
PImage a;
PImage b;
PImage c;
PFont font1;
PFont font2;
PFont font3;
int num = 200;
int time= 0;


//Original screen setup
void setup() {
  size(1200,1050);
  background(255);
  font1=createFont("Alex.ttf",60);
  font2=createFont("Berk.ttf",60);
  font3=createFont("Vibes.otf",60);
  a=loadImage("Adriana.jpg");
  b=loadImage("Susan1.jpg");
  c=loadImage("Truth.jpg");
  img= new images(50, 50, a, "Society says sexy, Seductive, Victoria's Secret Supermodel but do you know she is...");
  img1= new images(900,50, b, "Society saw an unattractive elderly woman.....");
  img2= new images(450, 725, c, "Moral of the story:");
  

}


void draw() {
  //Code to drag the word empathy around
  textFont(font1, 40);
  textSize(30);
  fill(255);
  text("empathy", mouseX, mouseY);
  
  //Code to display the word love randomly
  textFont(font3,40);
  stroke(10);
  textSize(150);
  fill(0);
  text("Love", random(width), random(height));
  
  //Code to display the images and text above them
  textFont(font2, 50);
  img.display();
  img1.display();
  img2.display();
  
  //Code to display and draw the "beating" heart
  fill(180,0,0);
  noStroke();
  ellipse(width/2-100,height/2-100,239,239);
  ellipse(width/2+100,height/2-100,239,239);
  triangle(width/2,height/2+200,width/2-167,height/2,width/2+167,height/2);
  
 //Code to display the ellipses moving inside heart
    for(int i = 0; i < 300; i+=3){
    float x = cos(radians(i)) * 10 + width /2 ;
    float y = sin(radians(i)) *40 + height / 2;
    float w = sin(radians(time+i )) * 200;
    w = abs(w);
    noStroke();
    fill(204,0,0);
    ellipse(x, y, w, w);
  }
  time++;
  

}