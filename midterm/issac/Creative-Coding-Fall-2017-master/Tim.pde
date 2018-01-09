class Tim {
  //declarations
  float size1;
  float size2;
  boolean floor;
  PVector location;
  float jump;
  float jumpMax;
  float gravity;

  
  //constructor
  Tim() { 
    size1 = 40;
    size2 = 100;
    location = new PVector(width/2,height-size2);
    jump = 0;
    jumpMax = 10;
    gravity = 0.5;
    floor = true;
  }
  
  //functions
  void keyPressed() {
    
    //Jumping logic
    if (key == ' ' && floor == true && keyPressed == true) {
       jumpMax = 10;
       jump = jumpMax;
       floor = false;
    }
       
    location.y -= jump;
    
     if (floor == true) {
      jump = 0;
    }
    else {
      jump -= gravity;
    }
    
    if (jump < -jumpMax) {
      jumpMax = 0;
      location.y = height - 108;
      floor = true;
    }
    //^end jump logic
    
    //left and right movement
    if (key == CODED) {
      if (keyCode == LEFT && keyPressed == true) {
        location.x -= 5;
      }
      
      if (keyCode == RIGHT && keyPressed == true) {
        location.x += 5;
      }
    }  
  }
  
  // Make sure Tim is always on-screen
  void checkBoundary() {
    if (location.x > width+25) {
      location.x = 0;
    }
    
    if (location.x < -25) {
      location.x = width;
    }
    
  }
  
  //create tim!
  void display() {
    noStroke();
    fill(255);
    rect(location.x,location.y,size1,size2);
  }
  
}