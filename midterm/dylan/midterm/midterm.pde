Movie j;
int i;
int count;
int countKey;
int numFrames = 11;
int currentFrame = 0;
int y;
PImage bean;
PImage[] jeff = new PImage[11];
PImage[] text = new PImage[6];
PImage[] swing = new PImage[14];
PImage[] meow = new PImage[11];
PImage[] spin = new PImage[47];


 
void setup() {
  fullScreen();
  frameRate(8);
  j = new Movie();
  bean = loadImage("Facebook-308722.png");
  text[0] = loadImage("text4.png");
  text[1] = loadImage("text1.png");
  text[2] = loadImage("text2.png");
  text[3] = loadImage("text3.png");
  text[4] = loadImage("text5.png");
  text[5] = loadImage("text6.png");
  jeff[0] = loadImage("sprite_00.png");
  jeff[1] = loadImage("sprite_01.png");
  jeff[2] = loadImage("sprite_02.png");
  jeff[3] = loadImage("sprite_03.png");
  jeff[4] = loadImage("sprite_04.png");
  jeff[5] = loadImage("sprite_00.png");
  jeff[6] = loadImage("sprite_01.png");
  jeff[7] = loadImage("sprite_02.png");
  jeff[8] = loadImage("sprite_03.png");
  jeff[9] = loadImage("sprite_04.png");
  jeff[10] = loadImage("sprite_00.png");
  swing[0] = loadImage("swing1.png");
  swing[1] = loadImage("swing2.png");
  swing[2] = loadImage("swing3.png");
  swing[3] = loadImage("swing4.png");
  swing[4] = loadImage("swing5.png");
  swing[5] = loadImage("swing6.png");
  swing[6] = loadImage("swing7.png");
  swing[7] = loadImage("swing8.png");
  swing[8] = loadImage("swing9.png");
  swing[9] = loadImage("swing10.png");
  swing[10] = loadImage("swing11.png");
  swing[11] = loadImage("swing12.png");
  swing[12] = loadImage("swing13.png");
  swing[13] = loadImage("swing14.png");
  meow[0] = loadImage("meow1.png");
  meow[1] = loadImage("meow2.png");
  meow[2] = loadImage("meow3.png");
  meow[3] = loadImage("meow4.png");
  meow[4] = loadImage("meow5.png");
  meow[5] = loadImage("meow6.png");
  meow[6] = loadImage("meow7.png");
  meow[7] = loadImage("meow8.png");
  meow[8] = loadImage("meow9.png");
  meow[9] = loadImage("meow10.png");
  meow[10] = loadImage("meow11.png");
  spin[0] = loadImage("spin1.png");
  spin[1] = loadImage("spin2.png");
  spin[2] = loadImage("spin3.png");
  spin[3] = loadImage("spin4.png");
  spin[4] = loadImage("spin5.png");
  spin[5] = loadImage("spin6.png");
  spin[6] = loadImage("spin7.png");
  spin[7] = loadImage("spin8.png");
  spin[8] = loadImage("spin9.png");
  spin[9] = loadImage("spin10.png");
  spin[10] = loadImage("spin11.png");
  spin[11] = loadImage("spin12.png");
  spin[12] = loadImage("spin13.png");
  spin[13] = loadImage("spin14.png");
  spin[14] = loadImage("spin15.png");
  spin[15] = loadImage("spin16.png");
  spin[16] = loadImage("spin17.png");
  spin[17] = loadImage("spin18.png");
  spin[18] = loadImage("spin19.png");
  spin[19] = loadImage("spin20.png");
  spin[20] = loadImage("spin21.png");
  spin[21] = loadImage("spin22.png");
  spin[22] = loadImage("spin23.png");
  spin[23] = loadImage("spin24.png");
  spin[24] = loadImage("spin25.png");
  spin[25] = loadImage("spin26.png");
  spin[26] = loadImage("spin27.png");
  spin[27] = loadImage("spin28.png");
  spin[28] = loadImage("spin29.png");
  spin[29] = loadImage("spin30.png");
  spin[30] = loadImage("spin31.png");
  spin[31] = loadImage("spin32.png");
  spin[32] = loadImage("spin33.png");
  spin[33] = loadImage("spin34.png");
  spin[34] = loadImage("spin35.png");
  spin[35] = loadImage("spin36.png");
  spin[36] = loadImage("spin37.png");
  spin[37] = loadImage("spin38.png");
  spin[38] = loadImage("spin39.png");
  spin[39] = loadImage("spin40.png");
  spin[40] = loadImage("spin41.png");
  spin[41] = loadImage("spin42.png");
  spin[42] = loadImage("spin43.png");
  spin[43] = loadImage("spin44.png");
  spin[44] = loadImage("spin45.png");
  spin[45] = loadImage("spin46.png");
  spin[46] = loadImage("spin47.png");
  
  
  
  zeroCounters();
  
}

void draw() { 
    background(255, 255, 255);
    //int s = second();
    
    if(key=='m')
      j.loadMeow(); 
    else
      j.loadJeff();
    if(key=='s')
      j.loadSwing();
    else
      j.loadJeff(); 
    if(key=='b')
      j.loadSpin();
    else
      j.loadJeff();
    if(key=='g')
      image(bean,width/2,200);
    else
      j.loadJeff();
      
             
         
         
     count = constrain(countKey,0,5);
     
     if (count>5){
       setup();
     } else {
       image(text[count], 450, 25, 400, 200);
     }
     
     
}

void keyPressed() {
  if (key=='c')
    countKey++;
  }

void zeroCounters(){
  countKey = 0;
}

void mousePressed(){
  exit();
}