float rate1 = 3;//For circle color (r,g,b) rate of change;
float m = 255;//"m" is maximum
float w = 3; //stroke weight

//Color Values
	//Color Values: Circle
		//Color Values: Circle - Base
float rC = random(m);
float gC = random(m);
float bC = random(m);

		//Color Values: Circle - Rate of Change
float changeRed = random(rate1);
float changeGreen = random(rate1);
float changeBlue = random(rate1);

	//Color Values: Rectangle/Backgound
float rR;
float gR;
float bR;

//Transparent Values
float t = 200;//
float t1 = 20;//for background

//Values of Circles
	//Radius of Circles
float r1 = 50;//main circle radius
float r2 = r1/2;//sub circle radius

	//Distance between the Cirlces
float d = 20;//base distance radius
float D = 1;//alternating distance
float dd;//base distance diagonally

//Movement Values

//<><><><><><><><><><><><><><><><><><><><><><><><><><><><>|

//Setup
void setup() {
  fullScreen();
  background(0);
}

//<><><><><><><><><><><><><><><><><><><><><><><><><><><><>|

void draw() {
  
  //Rectangle/Background Description
  	//Establishing Rectangle/Background Base
  rR = m - rC*2;
  gR = m - gC*2;
  bR = m - bC*2;
  
  	//Rectangle/Background Fill
  fill(rR*.6,gR*.6,bR*.6,t1/1.5);
  
  //Rectangle/Background
  rect(0,0,2500,2500);
  //background (m-rC/2,m-gC/2,m-bC/2);
  //background(100);
  
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  //Circle Descriptions
  
  	//Establishing Values for circle
  rC = rC + changeRed;//Color alternation for red
  	if (rC > m) {
      //rC = rC - changeRed;
      changeRed = changeRed * -1;
    }
  	if (rC < 0) {
      //rC = rC + changeRed;
      changeRed = changeRed * -1;
    }
  
  gC = gC + changeGreen;//Color alternation for green
  	if (gC > m) {
      //gC = gC - changeGreen;
      changeGreen = changeGreen * -1;
    }
  	if ( gC < 0 ) {
      //gC = gC + changeGreen;
      changeGreen = changeGreen * -1;
    }
  
  bC = bC + changeBlue;//Color alternation for blue
  	if ( bC > m ) {
      changeBlue = changeBlue * -1;
      //bC = bC - changeBlue;
    }
  	if (bC < 0) {
      changeBlue = changeBlue * -1;
      //bC = bC + changeBlue;
    }
  
  	//Circle Stroke: uses inverse color values
  strokeWeight( w );
  stroke( m - rC/1.2 , m - gC/1.2 , m - bC/1.2 , t );
  
  	//Circle Fill
  fill( rC , gC , bC , t );
  
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  //Circles/Ellipses
  	//Main Circle set
  ellipse( mouseX , mouseY , r1 , r1 );
  	//Sub Circles set
  d = d + D;//Sub circles x&y-axis distance alternating
  dd = d * 2 / 3;
  	if (d > 100) {
      D = D * -1;
    }
  	if (d < 10) {
      D = D * -1;
    }
  
  	//variation on x-axis
  	//var1.1
  ellipse(mouseX + random(d), mouseY , r2 , r2);
  ellipse(mouseX - random(d), mouseY , r2 , r2);
  	//var1.2
  ellipse(mouseX + d, mouseY , r2 , r2);
  ellipse(mouseX - d, mouseY , r2 , r2);
  	//var2.1
  ellipse(mouseX + random(d) - random(d), mouseY , r2 , r2);
  ellipse(mouseX + random(d) - random(d), mouseY , r2 , r2);
	//var2.2
  ellipse(mouseX + d - random(d), mouseY , r2 , r2);
  ellipse(mouseX + random(d) - d, mouseY , r2 , r2);
  	//variation on y-axis
  	//var1.1
  ellipse(mouseX, mouseY + random(d), r2 , r2);
  ellipse(mouseX, mouseY - random(d), r2 , r2);
  	//var1.2
  ellipse(mouseX, mouseY + d, r2, r2);
  ellipse(mouseX, mouseY - d, r2, r2);
  	//var2.1
  ellipse(mouseX, mouseY + random(d) - random(d), r2 , r2);
  ellipse(mouseX, mouseY + random(d) - random(d), r2 , r2);
	//var2.2
  ellipse(mouseX, mouseY + d - random(d), r2 , r2);
  ellipse(mouseX, mouseY + random(d) - d, r2 , r2);
  
  	//variation on diagonal-axis
  	//var1.1
  ellipse(mouseX + random(dd), mouseY + random(dd), r2 , r2);
  ellipse(mouseX + random(dd), mouseY - random(dd), r2 , r2);
  
  ellipse(mouseX - random(dd), mouseY + random(dd), r2 , r2);
  ellipse(mouseX - random(dd), mouseY - random(dd), r2 , r2);
  	//var1.2
  ellipse(mouseX + dd, mouseY + dd, r2 , r2);
  ellipse(mouseX + dd, mouseY - dd, r2 , r2);
  ellipse(mouseX - dd, mouseY + dd, r2 , r2);
  ellipse(mouseX - dd, mouseY - dd, r2 , r2);
  	//var2.1
  ellipse(mouseX + random(dd) - random(dd), mouseY + random(dd) - random(dd), r2 , r2);
  ellipse(mouseX + random(dd) - random(dd), mouseY + random(dd) - random(dd), r2 , r2);
  	//var2.2
  ellipse(mouseX + dd - random(dd), mouseY + dd - random(dd), r2 , r2);
  ellipse(mouseX + dd - random(dd), mouseY + random(dd) - dd, r2 , r2);
  ellipse(mouseX + random(dd) - dd, mouseY + dd - random(dd), r2 , r2);
  ellipse(mouseX + random(dd) - dd, mouseY + random(dd) - d, r2 , r2);

	if (mousePressed) {
      t1 = 0;
    } else {
      t1 = 20;
    }
}

void keyPressed() {
  if (key == 'S') {
    r1 = r1 + 1;
    r2 = r1 * 2 / 3;
  }
  if (key == 's') {
    r1 = r1 - 1;
    r2 = r1 * 2 / 3;
  }
  if (key == 'D') {
    d = d + 1;
    D = 0;
  }
  if (key == 'd') {
    d = d - 1;
    D = 0;
  }
  if (key == 'r') {
    rC = rC - 1;
    changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == 'R') {
    rC = rC + 1;
    changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == 'g') {
    gC = gC - 1;
    changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == 'G') {
    gC = gC + 1;
    changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == 'B') {
    bC = bC + 1;
    changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == 'b') {
    bC = bC - 1;
  	changeRed = 0;
    changeGreen = 0;
    changeBlue = 0;
  }
  if (key == '0') {
    t1 = 10000;
  }
  if (key == 'w') {
    w = w - 1;
  }
  if (key == 'W') {
    w = w + 1;
  }
}