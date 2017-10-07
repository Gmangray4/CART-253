class leftHeart {
 // Default values for speed and size
  int Speed = 20;
  int HEIGHT = 100;
  int WIDTH = 16;
  int size = 150;
  
  boolean firstContact;
  boolean stopForwardMovementWhenHeartIsInCenter;
  
  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;

  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;
  
  leftHeart(int _x, int _y,char _upKey, char _downKey) {
    
    x = _x;
    y = _y;
    upKey = _upKey;
    downKey = _downKey;
    
    lHeart = loadImage("pinkHeartv2_3.png");
  }
 
 
  //Makes the heart appear
  void appear() {
    firstContact = true;
  }
//This moves the heart closer to the center
  void MoveTowardTheCenter(){
      if (stopForwardMovementWhenHeartIsInCenter == false){ 
    x += 50;
     } else {
       x += 0;
     }
   }
 //This increase the left hearts size
  void heartGetsBigger(){
    size += 50;
    Speed -= 1;
  }
 
void update(){
// Update position with velocity (to move the paddle)
    x += vx;
    y += vy;
    
    if(x == 508){
    stopForwardMovementWhenHeartIsInCenter = true;
    }
    
    if(gameover.stopContolsWhenGameIsOver == true)
    {
      x = 508;
      y = 350;
      vx = 0;
      vy = 0;
    }
    // Constrain the paddle's y position to be in the window
    y = constrain(y,0 + HEIGHT/2,height - HEIGHT/2);
}
  
void display(){
      if(firstContact == true){
        imageMode(CENTER);
        image(lHeart,x,y);
        lHeart.resize(size,size); 
      }
    }
  void keyPressed() {
    if(gameover.stopContolsWhenGameIsOver == false) {
      
      // Check if the key is our up key
    if (key == upKey) {
      // If so we want a negative y velocity
      vy = -Speed;
    } // Otherwise check if the key is our down key 
    else if (key == downKey) {
      // If so we want a positive y velocity
      vy = Speed;
    }
  }
  }

  // keyReleased()
  //
  // Called when keyReleased is called in the main program

  void keyReleased() {
    // Check if the key is our up key and the paddle is moving up
    if (key == upKey && vy < 0) {
      // If so it should stop
      vy = 0;
    } // Otherwise check if the key is our down key and paddle is moving down 
    else if (key == downKey && vy > 0) {
      // If so it should stop
      vy = 0;
    }
  }
}