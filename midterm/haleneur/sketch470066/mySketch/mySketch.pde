void draw() {
 if ((mouseX > 0) && (mouseX < 200)){ 
   fill(255); // change fill color to white
  noStroke();
  rect(0,0,200,600);
   Drugs.play();
 }
  if ((mouseX > 200) && (mouseX < 400)) {
  fill(30,24,240); // change fill color
  rect(200,0,200,600);
  Drugs.stop(); //stop playing song when the mouse is over 200
  Underdog.play(); //play next song when the mouse is greater than 200
  }
  if ((mouseX > 400) && (mouseX < 600)) {
  fill(9,232,52); //change fill color
  noStroke();
  rect(400,0,200,600);
  Underdog.stop(); //stop playing when it is over 400
  Hightops.play(); // play Hightops when the mouse is greater than 400
  }
  if ((mouseX > 600) && (mouseX < 800)) {
  fill(252,252,13);//change fill color
  noStroke();
  rect(600,0,200,600);
  Hightops.stop(); //stop playing hightops
  Party.play();//start playing party people
  }
  
if ((mouseX > 800) && (mouseX < 1000)){
  fill(252,61,13); // change fill color
  noStroke();
  rect(800,0,200,600);
  Party.stop(); // stop playing party people
  Lust.play(); //start playing lust for life
}
   if (mouseX > 1000) {
  fill(252,13,213); // change fill color
  noStroke();
  rect(1000,0,200,600);
  Lust.stop();//stop playing lust for life
  Rockstar.play();//play rockstar
}
}