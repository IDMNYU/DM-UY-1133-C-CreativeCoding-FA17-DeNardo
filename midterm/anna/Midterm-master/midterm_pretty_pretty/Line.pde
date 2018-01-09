class Line{

  
  void display(){
    noFill();
    stroke(random(mouseX-200,mouseX-400),random(300-mouseY,500-mouseY),random(200-mouseX,600-mouseX));
    beginShape();
    curveVertex(random(-40,0),random(800-mouseX,1000-mouseX));
    curveVertex(random(-40,0),random(800-mouseX,1000-mouseX));
      curveVertex(200,1000-mouseX);
    curveVertex(random(200+mouseX-500,1200+mouseX-500),random(300,700));
    curveVertex(random(mouseY/2+10,mouseY/2+100),1000-mouseX);
    curveVertex(random(mouseX/4,mouseY/2),mouseY/2+100);
    curveVertex(mouseX+mouseY+200,mouseX-200);
    curveVertex(random(1000,1200), 1000-mouseX);
    curveVertex(random(1000,1200),1000-mouseX);
    endShape();
    frameRate((mouseY+500)/100);
  }
}