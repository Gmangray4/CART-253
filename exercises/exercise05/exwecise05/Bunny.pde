class Bunny {

  /////////////// Properties ///////////////

  // Default values for speed and size
  //I changed the hight and speed.
  int SPEED = 10;
  int HEIGHT = 300;
  int WIDTH = 300;

  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;
  
  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;
  char leftKey;
  char rightKey;
  
  // tell tell if an key is being prised. 
  Boolean keyPress = false;

  // for Anmiation. 
  int Anmiation;
  
  int time;

  /////////////// Constructor ///////////////
  // Bunny contorls.
  Bunny(int _x, int _y, char _upKey, char _downKey, char _rightKey, char _leftKey) {
    
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;

    upKey = _upKey;
    downKey = _downKey;
    leftKey = _leftKey;
    rightKey = _rightKey;
    
    
  // images of the bunny
  
   // idle images
  body[0] = loadImage ("idle_0.png"); 
  body[1] = loadImage ("idle_1.png"); 
  body[2] = loadImage ("idle_2.png");
  // Running images
  body[3] = loadImage ("running_0.png"); 
  body[4] = loadImage ("running_1.png"); 
  body[5] = loadImage ("running_2.png"); 
  
  // resizing the images so they fit the screen.
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
  // Display the bunny at its location
  void display() {
    // Set display properties
  imageMode(CENTER);
  image(body[floor(Anmiation)],x,y);

  // this creates the sencoed bunny
  pushMatrix();
  // makes sure the bunny is 200 x away from the orginal bunny. 
  translate(200,0);
  // mirrors the bunny. 
  scale(-1,1); 
  //display bunny number 2. 
  imageMode(CENTER);
  image(body[floor(Anmiation)],-x,y);
  popMatrix();

  //increase time
  time ++;
  
  //if no keys are being pressed do the anmation from 0 to 2 so that the idle anmation is in use. 
  if(keyPress == false){
   Anmiation = floor(map(sin(time),-1,1,0, 2));
 
  }
  //if any key is being pressed do the anmation from 3 to 5 so that the walking anmation is in use. 
  if(keyPress == true){
    Anmiation = floor(map(sin(time),-1,1,3, 5));
  }
  }

  // keyPressed()
  //
  // Called when keyPressed is called in the main program

  void keyPressed() {
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
        // If so we want a negative x velocity
        vx = -SPEED;
      } // Otherwise check if the key is our down key 
      else if (key == leftKey) {
        // If so we want a positive x velocity
        vx = SPEED;
      }
    }
     void keyReleased() { 
       keyPress = false;
       // Check if the key is our up key and if so stop.
        if (key == upKey && vy < 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
      } // Otherwise check if the key is our down key and if so stop.
    else if (key == downKey && vy > 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
    }
    if (key == rightKey && vx < 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
      } // Otherwise check if the key is our left key and if so stop.
    else if (key == leftKey && vx > 0) {
      // If so it should stop
      vy = 0;
      vx = 0;
    }
}
}