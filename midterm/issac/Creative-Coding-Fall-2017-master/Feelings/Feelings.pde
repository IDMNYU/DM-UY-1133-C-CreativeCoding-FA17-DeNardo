class Feelings {
  // declarations
  float counter;
  
  // constructor
  Feelings() {
    counter = 0;
    
  }
  // functions
  
  // This function creates the "flash" effect by forever counting during the duration of the program
  void run() {
    counter++;
    
    if (counter % 75 == 0 || counter % 76 == 0 || counter % 77 == 0) {
      //textFont(a,24);
      textSize(190);
      text("I",width/2.5,height/4);
    }
    
    if (counter % 75 == 0 || counter % 76 == 0 || counter % 77 == 0) {
      //textFont(a,24);
      textSize(190);
      text("M",width/2.5 + 200,height/4);
    }
    
    if (counter % 60 == 0 || counter % 61 == 0 || counter % 90 == 0 || counter % 91 == 0) {
      //textFont(a,24);
      textSize(190);
      text("H",width/5,height/2);
    }
    
    if (counter % 90 == 0 || counter % 91 == 0 || counter % 92 == 0) {
      //textFont(a,24);
      textSize(190);
      text("A",1.8*width/5,height/2);
    }
    
    if (counter % 30 == 0 || counter % 31 == 0 || counter % 32 == 0 || counter % 52 == 0) {
      //textFont(a,24);
      textSize(190);
      text("P",2.45*width/5,height/2);
    }
    
    if (counter % 100 == 0 || counter % 101 == 0) {
      //textFont(a,24);
      textSize(190);
      text("P",3*width/5,height/2);
    }
    
    if (counter % 60 == 0 || counter % 61 == 0 || counter % 62 == 0 || counter % 63 == 0) {
      //textFont(a,24);
      textSize(190);
      text("Y",3.5*width/5,height/2);
    }
  }
}