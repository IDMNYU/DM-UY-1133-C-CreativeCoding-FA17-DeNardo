class Paint {
  float rectSize = 25; // size of color icons
  
  float sizeSmall = 4; // size of small brush stroke
  float sizeMedium = 14; // size of medium brush stroke
  float sizeLarge = 28; // size of large brush stroke
  
  color black = #000000; // Black
  color darkGrey = #5E5E5E; // Dark Grey
  color lightGrey = #ABABAB; // Light Grey
  color white = #FFFFFF; // White
  color brown = #633A00; // Brown
  color maroon = #9E0000; // Maroon
  color red = #FF0000; // Red
  color orange = #FF8800; // Orange
  color golden = #FFDD00; // Golden
  color yellow = #FFFF00; // Yellow
  color lightNude = #FAE7D0; // Light Nude
  color mediumNude = #FFCC99; // Medium Nude
  color darkGreen = #088C1A; // Dark Green
  color lightGreen = #00FF00; // Light Green
  color turquoise = #00FFE5; // Turquoise
  color lightBlue = #8ADCFF; // Light Blue
  color cerulean = #0099FF; // Cerulean
  color blue = #0000FF; // Blue
  color navy = #003682; // Navy
  color purple = #9D00FF; // Purple
  color rose = #FF40A6; // Rose
  color pink = #FF9CDB; // Pink
  color darkNude = #E79256; // Dark Nude
  color richNude = #7B4B2A; // Rich Nude
  
  int large = 0;
  int med = 0;
  int small = 0;
  

  
  void display() {
    noStroke();
    fill(#DEDEDE);
    rect(0,0,800,80); // grey bar in bg
    
    //color bar
    strokeWeight(1);
    stroke(black);
    fill(white); 
    rect(10,10,rectSize,rectSize);
    fill(lightGrey); 
    rect(45,10,rectSize,rectSize);
    fill(darkGrey); 
    rect(80,10,rectSize,rectSize);
    fill(black);
    rect(115,10,rectSize,rectSize);
    fill(brown); 
    rect(150,10,rectSize,rectSize);
    fill(maroon);
    rect(185,10,rectSize,rectSize);
    fill(red); 
    rect(220,10,rectSize,rectSize);
    fill(orange); 
    rect(255,10,rectSize,rectSize);
    fill(golden); 
    rect(290,10,rectSize,rectSize);
    fill(yellow); 
    rect(325,10,rectSize,rectSize);
    fill(lightNude); 
    rect(360,10,rectSize,rectSize);
    fill(mediumNude); 
    rect(395,10,rectSize,rectSize); 
    fill(darkGreen); 
    rect(10,45,rectSize,rectSize);
    fill(lightGreen); 
    rect(45,45,rectSize,rectSize);
    fill(turquoise); 
    rect(80,45,rectSize,rectSize);
    fill(lightBlue); 
    rect(115,45,rectSize,rectSize);
    fill(cerulean); 
    rect(150,45,rectSize,rectSize);
    fill(blue); 
    rect(185,45,rectSize,rectSize);
    fill(navy);
    rect(220,45,rectSize,rectSize);
    fill(purple); 
    rect(255,45,rectSize,rectSize);
    fill(rose); 
    rect(290,45,rectSize,rectSize);
    fill(pink); 
    rect(325,45,rectSize,rectSize);
    fill(darkNude); 
    rect(360,45,rectSize,rectSize);
    fill(richNude); 
    rect(395,45,rectSize,rectSize);
    
    //line strokes bar
    strokeCap(SQUARE);
    stroke(black);
    strokeWeight(sizeSmall);
    line(440,12,500,12);
    
    strokeWeight(sizeMedium);
    line(440,28,500,28);
    
    strokeWeight(sizeLarge);
    line(440,56,500,56);
    
    // clear button
    strokeWeight(1);
    fill(white);
    rect(520,10,60,60);
    fill(black);
    text("clear",536,45);
    
  }
  
  void colorPicker() {
    // picks color
    if(mouseX >= 10 && mouseX <= 35 && mouseY >= 10 && mouseY <= 35)
      col = white;
    if(mouseX >= 45 && mouseX <= 70  && mouseY >= 10 && mouseY <= 35)
      col = lightGrey;
    if(mouseX >= 80 && mouseX <= 105  && mouseY >= 10 && mouseY <= 35)
      col = darkGrey;
    if(mouseX >= 115 && mouseX <= 140  && mouseY >= 10 && mouseY <= 35)
      col = black;
    if(mouseX >= 150 && mouseX <= 175  && mouseY >= 10 && mouseY <= 35)
      col = brown;
    if(mouseX >= 185 && mouseX <= 210  && mouseY >= 10 && mouseY <= 35)
      col = maroon;
    if(mouseX >= 220 && mouseX <= 245  && mouseY >= 10 && mouseY <= 35)
      col = red;
    if(mouseX >= 255 && mouseX <= 280  && mouseY >= 10 && mouseY <= 35)
      col = orange;
    if(mouseX >= 290 && mouseX <= 315  && mouseY >= 10 && mouseY <= 35)
      col = golden;
    if(mouseX >= 325 && mouseX <= 350  && mouseY >= 10 && mouseY <= 35)
      col = yellow;
    if(mouseX >= 360 && mouseX <= 385  && mouseY >= 10 && mouseY <= 35)
      col = lightNude;
    if(mouseX >= 395 && mouseX <= 420  && mouseY >= 10 && mouseY <= 35)
      col = mediumNude;
    if(mouseX >= 10 && mouseX <= 35 && mouseY >= 45 && mouseY <= 70)
      col = darkGreen;
    if(mouseX >= 45 && mouseX <= 70 && mouseY >= 45 && mouseY <= 70)
      col = lightGreen;
    if(mouseX >= 80 && mouseX <= 105  && mouseY >= 45 && mouseY <= 70)
      col = turquoise;
    if(mouseX >= 115 && mouseX <= 140  && mouseY >= 45 && mouseY <= 70)
      col = lightBlue;
    if(mouseX >= 150 && mouseX <= 175  && mouseY >= 45 && mouseY <= 70)
      col = cerulean;
    if(mouseX >= 185 && mouseX <= 210  && mouseY >= 45 && mouseY <= 70)
      col = blue;
    if(mouseX >= 220 && mouseX <= 245  && mouseY >= 45 && mouseY <= 70)
      col = navy;
    if(mouseX >= 255 && mouseX <= 280  && mouseY >= 45 && mouseY <= 70)
      col = purple;
    if(mouseX >= 290 && mouseX <= 315  && mouseY >= 45 && mouseY <= 70)
      col = rose;
    if(mouseX >= 325 && mouseX <= 350  && mouseY >= 45 && mouseY <= 70)
      col = pink;
    if(mouseX >= 360 && mouseX <= 385  && mouseY >= 45 && mouseY <= 70)
      col = darkNude;
    if(mouseX >= 395 && mouseX <= 420  && mouseY >= 45 && mouseY <= 70)
      col = richNude;
  }
  
  void sizePicker() {
    // picks size
    if(mouseX >= 440 && mouseX <= 500 && mouseY >= 10 && mouseY <= 14){
      //changes brush size based on the boolean thicc. you can either draw with changing brush size or draw with an unchanging brush size
      if(thicc){
        sizes = 0; 
      }
      else{
        sizes += 1;
      }
      size = sizeSmall;
    }
    if(mouseX >= 440 && mouseX <= 500 && mouseY >= 21 && mouseY <= 35){
      size = sizeMedium;
      if(thicc){
        sizes = 0;
      }
      else{
        sizes += 1;
      }
    }
    if(mouseX >= 440 && mouseX <= 500 && mouseY >= 42 && mouseY <= 70){
      size = sizeLarge;
      if(thicc){
        sizes = 0;
      }
      else{
        sizes += 1;
      }
    }
     if(sizes%2 != 0){
       thicc = true;
     }
      else{
        thicc = false;
      }
  }
  
  void clearCanvas() {
    // clears  canvas
    if(mouseX >= 520 && mouseX <= 580 && mouseY >= 10 && mouseY <= 70)
       background(white);
  }
}
