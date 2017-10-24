class Bunny {

  /////////////// Properties ///////////////

  // Default values for speed and size
  //I changed the hight and speed.
  int SPEED = 10;
  int HEIGHT = 300;
  int WIDTH = 300;

  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x = width/2;
  int y = height/2;
  int vx;
  int vy;
  
  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;
  char leftKey;
  char rightKey;
  
  Boolean keyPress = false;

  int Anmiation;
  
  int time;

  /////////////// Constructor ///////////////

  // Paddle(int _x, int _y, char _upKey, char _downKey)
  //
  // Sets the position and controls based on arguments,
  // starts the velocity at 0

  Bunny(int _x, int _y, char _upKey, char _downKey, char _rightKey, char _leftKey) {
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;

    upKey = _upKey;
    downKey = _downKey;
    leftKey = _leftKey;
    rightKey = _rightKey;
    
  body[0] = loadImage ("idle_0.png"); 
  body[1] = loadImage ("idle_1.png"); 
  body[2] = loadImage ("idle_2.png"); 
  body[3] = loadImage ("running_0.png"); 
  body[4] = loadImage ("running_1.png"); 
  body[5] = loadImage ("running_2.png"); 
  
  body[0].resize(WIDTH,HEIGHT);
  body[1].resize(WIDTH,HEIGHT);
  body[2].resize(WIDTH,HEIGHT);
  body[3].resize(WIDTH,HEIGHT);
  body[4].resize(WIDTH,HEIGHT);
  body[5].resize(WIDTH,HEIGHT);
  
  
  }
  /////////////// Methods ///////////////

  // update()
  //
  // Updates position based on velocity and constraints the paddle to the window

  void update() {
    // Update position with velocity (to move the paddle)
    x += vx;
    y += vy;

    // Constrain the paddle's y position to be in the window
  }

  // display()
  //
  // Display the paddle at its location

  void display() {
    // Set display properties

  imageMode(CENTER);
  image(body[floor(Anmiation)],x,y);
  pushMatrix();
  translate(x,y);
  scale(-1,1); // You had it right!
  image(body[floor(Anmiation)],x,y);
  popMatrix();
  
  time ++;
  
  if(keyPress == false){
   Anmiation = floor(map(sin(time),-1,1,0, 2));
 
  }
  if(keyPress == true){
    Anmiation = floor(map(sin(time),-1,1,3, 5));
  }
  }

  // keyPressed()
  //
  // Called when keyPressed is called in the main program

  void keyPressed() {
    // if the game is not ove
     keyPress = true;
      if (key == upKey) {
        // If so we want a negative y velocity
        vy = -SPEED;
      } // Otherwise check if the key is our down key 
      else if (key == downKey) {
        // If so we want a positive y velocity
        vy = SPEED;
      }
       if (key == rightKey) {
        // If so we want a negative y velocity
        vx = -SPEED;
      } // Otherwise check if the key is our down key 
      else if (key == leftKey) {
        // If so we want a positive y velocity
        vx = SPEED;
      }
    }
     void keyReleased() { 
       keyPress = false;
       // Check if the key is our up key and the paddle is moving up
        if (key == upKey && vy < 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
      } // Otherwise check if the key is our down key and paddle is moving down 
    else if (key == downKey && vy > 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
    }
    if (key == rightKey && vx < 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
      } // Otherwise check if the key is our down key and paddle is moving down 
    else if (key == leftKey && vx > 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
    }
}
}