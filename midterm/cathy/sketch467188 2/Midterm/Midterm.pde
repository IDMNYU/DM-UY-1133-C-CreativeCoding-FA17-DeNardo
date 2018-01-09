Tickets [] tickets= new Tickets[6];
Map[] map = new Map[6];

void setup() {
  size(1450, 1900);

  //create six tickets
  tickets[0]= new Tickets(40, 150, "SHANGHAI", "NEW YORK", "11");
  tickets[1]= new Tickets(760, 150, "NEW YORK", "BAHAMAS", "1");
  tickets[2]= new Tickets(40, 460, "NEW YORK", "DOMINICAN REPUBLIC", "1");
  tickets[3]= new Tickets(760, 460, "SHANGHAI", "MALAYSIA", "1");
  tickets[4]= new Tickets(40, 750, "SHANGHAI", "AUSTRALIA", "1");
  tickets[5]= new Tickets(760, 750, "LOS ANGELAS", "SHANGHAI", "1");
  //create six maps accordingly 
  map[0] = new Map(1246, 420, 496, 402);
  map[1] = new Map(496, 402, 475, 527);
  map[2] = new Map(496, 402, 490, 540);
  map[3] = new Map(1246, 420, 1235, 613);
  map[4] = new Map(1246, 420, 1340, 777);
  map[5] = new Map(300, 450, 1246, 420);
}

void draw() {
  background(#0f6089);
  //draw the title at the top
  noStroke();
  strokeWeight(4);
  fill(#BCE5F7);
  rect(500, 20, 500, 100, 18, 18, 18, 18);
  textSize(30);
  fill(#1090C9);
  text("CATHY'S TRAVEL COLLECTION", 525, 60);
  text("2000-2017", 660, 100);

  //display all the tickets
  for (int i=0; i<tickets.length; i++) {
    tickets[i].display();
  }
  // if mousepressed display map accordingly
  if (mousePressed) {
    if ((mouseX>40&&mouseX<600)&&(mouseY>150&&mouseY<350)) {
      map[0].display();
    } else if ((mouseX>760&&mouseX<1420)&&(mouseY>150&&mouseY<350)) {
      map[1].display();
    } else if ((mouseX>40&&mouseX<600)&&(mouseY>460&&mouseY<660)) {
      map[2].display();
    } else if ((mouseX>760&&mouseX<1420)&&(mouseY>460&&mouseY<660)) {
      map[3].display();
    } else if ((mouseX>40&&mouseX<600)&&(mouseY>750&&mouseY<950)) {
      map[4].display();
    } else if ((mouseX>760&&mouseX<1420)&&(mouseY>750&&mouseY<950)) {
      map[5].display();
    }
  }
}