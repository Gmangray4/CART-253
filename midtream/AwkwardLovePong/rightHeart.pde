// rightHeart Paddle
// player 2's half heart

class rightHeart {
  // Default values for speed and size
  int Speed = 20;
  int HEIGHT = 100;
  int WIDTH = 16;
  int size = 150;
  
  // This is used to make the rightHeart appear when set ture + allow collision.
  boolean firstContact;
  // this is to tell the rightHeartv to stop moving futher right when it reaches the center. 
  boolean stopForwardMovementWhenHeartIsInCenter;

  //center 516

  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;

  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;

  rightHeart(int _x, int _y, char _upKey, char _downKey) {
    x = _x;
    y = _y;
    upKey = _upKey;
    downKey = _downKey;
  // loads the png for the leftHeartt in the program.  
    rHeart = loadImage("pinkHeartv2_2.png");
  }

  void appear() {
    //Makes the heart appear and starts Conlssion
    firstContact = true;
  }
  void MoveTowardTheCenter() {
    //This moves the heart closer to the center
    if (stopForwardMovementWhenHeartIsInCenter == false) { 
      x -= 50;
    } else {
      x += 0;
    }
  }
  //This increase the righthearts size and drops it's speed
  void heartGetsBigger() {
    size += 25;
    Speed -= 1;
  }

  void update() {
    // Update position with velocity (to move the rightheart paddle)
    x += vx;
    y += vy;

    //Stops the the right Heart paddle movement when it reachs the center. 
    if (x == 516) {
      stopForwardMovementWhenHeartIsInCenter = true;
    }
    // places the rightHeart in the center when the game is over.
    if (gameover.stopContolsWhenGameIsOver == true)
    {
      x = 516;
      y = 350;
      vx = 0;
      vy = 0;
    }


    // Constrain the Hearts's y position to be in the window
    y = constrain(y, 0 + HEIGHT/2, height - HEIGHT/2);
  }

  void display() {
    // Draws the leftHeart and resizes it.
    if (firstContact == true) {
      imageMode(CENTER);
      image(rHeart, x, y);
      rHeart.resize(size, size);
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