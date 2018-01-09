/*
Thank you for viewing Izaac Crayton's Creative Coding midterm!
Below, and on most of the other tabs is the code behind this scene.

DESCRIPTION:
Tim, the lonely character you see at the bottom of the screen,
remains there forever. There is no escaping his box. Forever
bound in his world, he asserts he is happy underneath an 
eternal downpour. 

INTERACTION:
Use the LEFT and RIGHT Arrow keys to move
Use the Spacebar to Jump
Press and Hold the Left Mouse Button so enable Slow Motion

All refereences can be found on the 'References' tab.

Enjoy!

*/

ArrayList<Rain> drops;
Feelings words;
Tim player;

void setup() {
  fullScreen(P2D);
  frameRate(60);
  //creates arraylist of rain
  drops = new ArrayList<Rain>();
  player = new Tim();
  words = new Feelings();
}

void draw() {
  background(0);
  
  //Cool Slow Motion
  if (mousePressed == true) {
    frameRate(30);
  }
  else
  {
    frameRate(60);
  }
  
  //Tim's Feelings
  words.run();
  
  //draws Tim
  player.display();
  
  //makes sure tim doesn't get lost :(
  player.checkBoundary();
  
  //control Tim
  player.keyPressed();
  
  //fills with rain infintely
  drops.add(new Rain());
  
  //creates every drop and checks to see if it is at the bottom of the screen
  for(int i= drops.size()-1; i >= 0; i--) {
    Rain drop = drops.get(i);
    
    drop.update();
    drop.display();
    drop.contact(drop);
    
    //removes drops that have left the screen
    if (drop.activate()) {
      drops.remove(i);
    }
  }
  
}