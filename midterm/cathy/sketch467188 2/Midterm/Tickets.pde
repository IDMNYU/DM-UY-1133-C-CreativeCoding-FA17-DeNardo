class Tickets {
  int x;//rectangle position x
  int y;//rectangle position y
  String departure;//departure
  String arrival;//arrival 
  String times;//how many times traveled 

  Tickets(int tempX, int tempY, String tempD, String tempA, String tempT) {
    x=tempX;
    y=tempY;
    departure=tempD; 
    arrival= tempA;
    times= tempT;
  }

  //draw the framework of the ticket object
  void display() { 
    fill(#BCE5F7);
    stroke(#bce5f7);
    rect(x, y, 660, 200, 18, 18, 18, 18);
    strokeWeight(4);
    stroke(#0e92c7);
    line(x+10, y+50, x+650, y+50);
    fill(#1090C9);
    textSize(23);
    text("Airline Ticket", x+30, y+40);
    text("Passenger: CATHY XU", x+230, y+40);
    fill(#561C10);
    text("Departure: " + departure, x+20, y+100);
    text("Arrival: " + arrival, x+315, y+100);
    text("Traveled " + times +" times", x+200, y+165);
  }
}