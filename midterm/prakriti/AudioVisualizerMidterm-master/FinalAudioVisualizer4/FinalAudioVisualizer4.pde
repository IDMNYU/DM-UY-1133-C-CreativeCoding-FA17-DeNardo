  
import processing.sound.*;
//fft-It calculates the normalized power spectrum of an audio stream the moment it is queried with the analyze() method.
//Queries a value from the analyzer and returns a vector the size of the pre-defined number of bands.
FFT fft;

//AudioIn let's you grab the audio input from your soundcard.
AudioIn in;

//bands are the number of frequency I want to display from lowest to highest
int bands = 512;

//pauses for 3 seconds
int pauseInterval = 3000;

//vector of the pre-defined number of bands where each value of the vector represents the amplitude of that frequency band
float[] spectrum = new float[bands];

//initialize the size of the display 
void setup() {
  size(1800, 1000);
  //background(255);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);
  in = new AudioIn(this, 0);
  
  // start the Audio Input
  in.start();
  
  // patch the AudioIn
  fft.input(in);
  colorMode(HSB,256,100,100);
  // fft.analyze(spectrum);
}

void keyPressed() { 
  //this allows for the user to pause the display 
  delay(pauseInterval);
}

void draw() {

  background(255);
  
  //line(10, 10, 10, 20);
  fft.analyze(spectrum);
  //this helped with deciding the amplification factor to use
  float softest = 10000, loudest = 0;
  
//for statement to find the max and min amplitude in the given sound piece sample
  for(int frequency = 0; frequency < bands; frequency++){
    float amp = spectrum[frequency];
    if (frequency == 0){
      loudest = amp;
      softest = amp;
    }
    else {
      if (amp < softest)
        softest = amp;
      else if (amp > loudest)
        loudest = amp;
    }
    
  
    amp = (30000*amp);
  // The result of the FFT is normalized
  // draw the line for frequency band i scaling it up by 5 to get more amplitude.
     fill(frequency, 100, 100);
     color(frequency, 100, 100);
     //rect( frequency, height, 10, height - amp*height*100 );
     //ellipse(frequency, 160, amp*1000, amp*1000);
     // 500, 500, 0, 0 - coord
     // 0, 0, 500, 500
     
     //adjusts size of rectangle and diameter of circle
     int x = frequency*(2+10);
     float y =(2*height/4) - amp/2;
     
     //location of the start of the rectangle for that iteration
     int x1 = x+10;
     float y1 = amp;
     
       println("frequency: %f", frequency + " " + " amp:" + amp + " x: " + x  + " y:" + y );

     //rect(100, 100, 10, 500);
     
     //creates a rectangle and circle object and then calls the corresponding draw methods
     Rectangle r = new Rectangle(x, y, 10, amp, frequency);
     r.draw();
     
     Circle c = new Circle(x, height/4, amp, frequency);
     c.draw();
  }
  println("Loudest: " + loudest);
  println("Softest: " + softest);
  
  
  // delay(1000);
}

//each element represents one of 512 the frequency bands and the index corresponds to that frequency band 
//and the corresponding value is the measure of the amplitude