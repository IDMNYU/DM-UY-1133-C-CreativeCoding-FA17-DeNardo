//the frame system used to run the gifs as movies is sourced from a chat room.
//I posed the question because I couldn't figure out a solution after the movie function
//wouldn't work for reasons still unknown.


class Movie {
  
  
  
  
  void loadJeff() {
    
    currentFrame = (currentFrame+1) % numFrames;
    int offset = 0;
    for (int x = -100; x < width; x += jeff[0].width) { 
      image(jeff[(currentFrame+offset) % numFrames], 20, 20);
      offset+=1;
    }
    
  }
  
  void loadSwing() {
    background(73, 140, 173);
    currentFrame = (currentFrame+1) % numFrames;
    int offset = 0;
    for (int x = -100; x < width; x += swing[0].width) { 
      image(swing[(currentFrame+offset) % numFrames], 600, 0);
      offset+=1;
    }
  }
  
  void loadMeow() {
    background(249, 175, 161);
    currentFrame = (currentFrame+1) % numFrames;
    int offset = 0;
    for (int x = -100; x < width; x += meow[0].width) { 
      image(meow[(currentFrame+offset) % numFrames], 600, 200);
      offset+=2;
}
  }
  
  void loadSpin() {
    background(171,229,207);
    currentFrame = (currentFrame+1) % numFrames;
    int offset = 0;
    for (int x = -100; x < width; x += spin[20].width) { 
      image(spin[(currentFrame+offset) % numFrames], 600, 200);
      offset+=1;
}
  }
}