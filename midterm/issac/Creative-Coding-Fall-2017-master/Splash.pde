class Splash {
  //declarations
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  //constructor
  Splash(float x,float y) {
    location = new PVector(x,y);
    velocity = new PVector(random(-1,1),random(-1,1));
    acceleration = new PVector(0,0.08);
   
    lifespan = 255;
  }

  //functions
  
  //where the splashes go
  void update() {
    location.add(velocity); 
    velocity.add(acceleration);
    lifespan -= 2;
  }

  //display splash on impact
  void display() {
    noStroke();
    fill(255,lifespan);
    ellipse(location.x,location.y,5,5);
  }
  
}