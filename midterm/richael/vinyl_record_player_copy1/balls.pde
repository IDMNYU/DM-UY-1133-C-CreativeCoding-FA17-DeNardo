class balls{
 
 balls(){
 }
 
 void draw(){
   
    noStroke();
    fill(140,180,170);
 
    quad(0, 150, 0, 600, 800, 600, 800, 150);
   
  for(int i = 0; i < 8; i++){
     
    //white and red
    int randomSize = (int)random(40);
    noStroke();
    fill(255, random(255));
    ellipse(random(550,800), random(200,480), randomSize, randomSize);    
    fill(random(255), random(0), random(0), random(255));
    ellipse(random(550,800), random(200,480), randomSize, randomSize);
   
    note((int)random(550,800), (int)random(200,480), 255);   
    
  } 
  
 }
 
 
public void note(int x, int y, int noteColor){
  
  noStroke();
  fill(noteColor);
  ellipse(x,y, 10,10);
  ellipse(x+15,y, 10,10); 
  stroke(noteColor);
  strokeWeight(3);
  line(x+3, y, x+3, y-20);
  line(x+3, y-20, x+18, y-20);
  line(x+18, y-20, x+18, y);
  for(int i = 0; i < fft.specSize(); i++) {
    strokeWeight(2);
    stroke(255);
    line(width-i*5, height, width-i*5, height-sqrt(fft.getBand(i)*50));
    strokeWeight(1);
    stroke(160,200,190);
    line(width-i*5, height, width-i*5, height-sqrt(fft.getBand(i)*50));
  } 
}
 
}

  