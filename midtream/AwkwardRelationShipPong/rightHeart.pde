class rightHeart {
 // Default values for speed and size
  int Speed = 24;
  int HEIGHT = 100;
  int WIDTH = 16;
  int size = 150;
 
  boolean firstContact;
  boolean stopForwardMovementWhenHeartIsInCenter;
  boolean stopContolsWhenGameIsOver;
  
  //center 516
  
  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;

  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;
  
  rightHeart(int _x, int _y,char _upKey, char _downKey) {
    x = _x;
    y = _y;
    upKey = _upKey;
    downKey = _downKey;
  }
 
  void appear() {
    firstContact = true;
  }
  void MoveTowardTheCenter(){
      if (stopForwardMovementWhenHeartIsInCenter == false){ 
    x -= 50;
     } else {
       x += 0;
     }
   }
  void heartGetsBigger(){
    size += 50;
    Speed -= 1;
    
  }
  
void update(){
// Update position with velocity (to move the paddle)
    x += vx;
    y += vy;

    //Stops the the Heart paddle movement when it reachs the center. 
    if(x == 516){
    stopForwardMovementWhenHeartIsInCenter = true;
    }

    // Constrain the Hearts's y position to be in the window
    y = constrain(y,0 + HEIGHT/2,height - HEIGHT/2);
}
  
void display(){
      if(firstContact == true){
        imageMode(CENTER);
        image(rHeart,x,y);
        rHeart.resize(size,size); 
      }
    }
  void keyPressed() {
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