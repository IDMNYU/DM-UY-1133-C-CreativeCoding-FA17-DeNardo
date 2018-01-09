class Rain {
  //declarations
  PVector location;
  PVector velocity;
  PVector acceleration;
  Splash[] particles = new Splash[10];
  
  //constructor
  Rain() {
    location = new PVector(random(width),-20);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0.35);  
    for (int i=0; i < particles.length; i++) {
      particles[i] = new Splash(location.x,1060);
    }
  }
  
  //functions
  
  //determines when splash needs to activate
  boolean activate() {
    if (location.y > height) {
      return true;
    }
    else {
      return false;
    }
  } 
  
  //applies gravity like force on object
  void update() {
    location.add(velocity); 
    velocity.add(acceleration);
  }
  
  //displays object
  void display() {
    stroke(255);
    line(location.x,location.y,location.x,location.y+10);
    
  }
  
  //activates splash
  void contact(Rain r) {
    
    if (r.activate()) {
       for (Splash s : particles) {
          s.update();
          s.display();
        }
    }
  }

}