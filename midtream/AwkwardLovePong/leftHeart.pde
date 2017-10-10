class leftHeart {
  // Default values for speed and size
  int Speed = 20;
  int HEIGHT = 100;
  int WIDTH = 16;
  int size = 150;

  // This is used to make the leftHeart appear when set ture + allow collision.
  boolean firstContact;
  // this is to tell the leftHeartt to stop moving futher right when it reaches the center. 
  boolean stopForwardMovementWhenHeartIsInCenter;

  // The position and velocity of the leftHeartt (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;

  // The characters used to make the leftHeartt move up and down, defined in constructor
  char upKey;
  char downKey;

  leftHeart(int _x, int _y, char _upKey, char _downKey) {

    x = _x;
    y = _y;
    upKey = _upKey;
    downKey = _downKey;
    // loads the png for the leftHeartt in the program.  
    lHeart = loadImage("pinkHeartv2_3.png");
  }


  
  void appear() {
    //Makes the heart appear and starts Conlssion
    firstContact = true;
  }
  //This moves the heart closer to the center
  void MoveTowardTheCenter() {
    if (stopForwardMovementWhenHeartIsInCenter == false) { 
      x += 50;
    } else {
      x += 0;
    }
  }
  //This increase the lefthearts size
  void heartGetsBigger() {
    size += 25;
    Speed -= 1;
  }

  void update() {
    // Update position with velocity (to move the paddle)
    x += vx;
    y += vy;

    // stops the leftHeart when it reaches the center x axis.
    if (x == 508) {
      stopForwardMovementWhenHeartIsInCenter = true;
    }
    // places the leftHeart when in the center when the game is over.
    if (gameover.stopContolsWhenGameIsOver == true)
    {
      x = 508;
      y = 350;
      vx = 0;
      vy = 0;
    }
    // Constrain the paddle's y position to be in the window
    y = constrain(y, 0 + HEIGHT/2, height - HEIGHT/2);
  }
  void display() {
    // Draws the leftHeart and resizes it. 
    if (firstContact == true) {
      imageMode(CENTER);
      image(lHeart, x, y);
      lHeart.resize(size, size);
    }
  }
  void keyPressed() {
    if (gameover.stopContolsWhenGameIsOver == false) {
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
}