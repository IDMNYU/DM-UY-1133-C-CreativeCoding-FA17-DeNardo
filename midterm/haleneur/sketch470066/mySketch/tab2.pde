int rainbow;
import processing.sound.*;
SoundFile Drugs;
SoundFile Hightops;
SoundFile Underdog;
SoundFile Party;
SoundFile Lust;
SoundFile Rockstar;
// import audio files

void setup() {
  size(1200,600);
  Drugs = new SoundFile(this,"drugsyoushouldtryit.mp3"); // label song as Drugs
  Hightops = new SoundFile(this,"hightops.mp3"); //label song as Hightops
  Underdog = new SoundFile(this,"underdog.mp3"); //label song as Underdog
  Party = new SoundFile(this,"partypeople.mp3"); //label song as Party
  Lust = new SoundFile(this,"lustforlife.mp3"); //label song as Lust
  Rockstar = new SoundFile(this,"rockstar.mp3"); //label song as Rockstar

   fill(0);
  rect(0,0,200,600);
  fill(26,13,183); 
  noStroke();
  rect(200,0,200,600);
  fill(0,162,55);
  noStroke();
  rect(400,0,200,600);
  fill(234,219,45);
  noStroke();
  rect(600,0,200,600);
  fill(209,62,21);
  noStroke();
  rect(800,0,200,600);
  fill(170,43,132);
  noStroke();
  rect(1000,0,200,600);
}
 // set up design 
  