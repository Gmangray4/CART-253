// Ball
//
// A class that defines a ball that can move around in the window, bouncing
// of the top and bottom, and can detect collision with a paddle and bounce off that.

class Ball {

  /////////////// Properties ///////////////

  // Default values for speed and size
  int SPEED = 25;
  int SIZE = 100;

  // The location of the ball
  int x;
  int y;

  // The velocity of the ball
  int vx;
  int vy;

  // This is set collosion so that the half heart paddle and the balls do not collied when the their not visable. 
  boolean startCollisionForLeftHeart = false;
  boolean startCollisionForRightHeart = false;
 
  /////////////// Constructor //////////////
  // Ball(int _x, int _y)
  //
  // The constructor sets the variable to their starting values
  // x and y are set to the arguments passed through (from the main program)
  // and the velocity starts at SPEED for both x and y 
  // (so the ball starts by moving down and to the right)
  // NOTE that I'm using an underscore in front of the arguments to distinguish
  // them from the class's properties

  Ball(int _x, int _y) {
    x = _x;
    y = _y;
    vx = SPEED;
    vy = SPEED;
    //Loade's the ball's image. 
    pinkHeart = loadImage("Heart_09.png");
  }


  /////////////// Methods ///////////////

  // update()
  //
  // This is called by the main program once per frame. It makes the ball move
  // and also checks whether it should bounce of the top or bottom of the screen
  // and whether the ball has gone off the screen on either side.

  void update() {
    // Check if the ball is going off the top of bottom
    x += vx;
    y += vy;
    if (y - SIZE/2 < 0 || y + SIZE/2 > height) {
      // If it is, then make it "bounce" by reversing its velocity
      vy = -vy;
    }
    // stops the ball if the game is over and places it in a location where the ball is no longer visable. 
    if (gameover.stopContolsWhenGameIsOver == true) {
      vx = 0;
      vy = 0; 
      x = 100;
      y = 8000;
    }
  }


  // reset()
  //
  // Resets the ball to the centre of the screen.
  // Note that it KEEPS its velocity

  void reset() {
    x = width/2;
    y = height/2;
  }

  // isOffScreen()
  // Returns true if the ball is off the left or right side of the window
  // otherwise false
  // (If we wanted to return WHICH side it had gone off, we'd have to return
  // something like an int (e.g. 0 = not off, 1 = off left, 2 = off right)
  // or a String (e.g. "ON SCREEN", "OFF LEFT", "OFF RIGHT")

  boolean isOffScreenRight() {
    return (x + SIZE/2 < 0);
  }

  boolean isOffScreenLeft() {
    return (x - SIZE/2 > width);
  }

  // collide(Paddle paddle)
  //
  // Checks whether this ball is colliding with the paddle passed as an argument
  // If it is, it makes the ball bounce away from the paddle by reversing its
  // x velocity

  void collide(Paddle paddle) {
    // Calculate possible overlaps with the paddle side by side
    boolean insideLeft = (x + SIZE/2 > paddle.x - paddle.WIDTH/2);
    boolean insideRight = (x - SIZE/2 < paddle.x + paddle.WIDTH/2);
    boolean insideTop = (y + SIZE/2 > paddle.y - paddle.HEIGHT/2);
    boolean insideBottom = (y - SIZE/2 < paddle.y + paddle.HEIGHT/2);

    // Check if the ball overlaps with the paddle
    if (insideLeft && insideRight && insideTop && insideBottom) {
      // If it was moving to the left
      if (vx < 0) {
        // Reset its position to align with the right side of the paddle
        x = paddle.x + paddle.WIDTH/2 + SIZE/2;
        BonceSound.play();
      } else if (vx > 0) {
        // Reset its position to align with the left side of the paddle
        x = paddle.x - paddle.WIDTH/2 - SIZE/2;
        BonceSound.play();
      }
      // And make it bounce
      vx = -vx;
    }
  }

  // collide with Heart Paddles
  // These function do the folloing

  // Begins collision for the half heart on the right side
  void beginCollisionForRightHeart() {
    startCollisionForRightHeart = true;
  }
  // Begins collision for the half heart on the right left
  void beginCollisionForLeftHeart() {
    startCollisionForLeftHeart = true;
  }
  // If ball collides with half heart on the left side when Collison becomes active.
  void collide(leftHeart p1HalfHeart) { 
    {
      //Same code as the collision with the paddles.
      if (startCollisionForLeftHeart== true) { 
        boolean insideLeft = (x + SIZE/2 > p1HalfHeart.x - p1HalfHeart.WIDTH/2);
        boolean insideRight = (x - SIZE/2 < p1HalfHeart.x + p1HalfHeart.WIDTH/2);
        boolean insideTop = (y + SIZE/2 > p1HalfHeart.y - p1HalfHeart.HEIGHT/2);
        boolean insideBottom = (y - SIZE/2 < p1HalfHeart.y + p1HalfHeart.HEIGHT/2);

        // Check if the ball overlaps with the left heart paddle
        if (insideLeft && insideRight && insideTop && insideBottom) {
          // If it was moving to the left
          if (vx < 0) {
            // Reset its position to align with the right side of theleft heart paddle
            x = p1HalfHeart.x + p1HalfHeart.WIDTH/2 + SIZE/2;
            BonceSound.play();
          } else if (vx > 0) {
            // Reset its position to align with the left side of the left heart paddle
            x = p1HalfHeart.x - p1HalfHeart.WIDTH/2 - SIZE/2;
            BonceSound.play();
          }
          // And make it bounce
          vx = -vx;
        }
      }
    }
  }

  void collide(rightHeart p2HalfHeart) {
    // Calculate possible overlaps with the right heart paddle side by side

    if (startCollisionForRightHeart == true) {

      boolean insideLeft = (x + SIZE/2 > p2HalfHeart.x - p2HalfHeart.WIDTH/2);
      boolean insideRight = (x - SIZE/2 < p2HalfHeart.x + p2HalfHeart.WIDTH/2);
      boolean insideTop = (y + SIZE/2 > p2HalfHeart.y - p2HalfHeart.HEIGHT/2);
      boolean insideBottom = (y - SIZE/2 < p2HalfHeart.y + p2HalfHeart.HEIGHT/2);

      // // Check if the ball overlaps with the right heart paddle
      if (insideLeft && insideRight && insideTop && insideBottom) {
        // If it was moving to the left
        if (vx < 0) {
          // Reset its position to align with the right side of the right heart paddle
          x = p2HalfHeart.x + p2HalfHeart.WIDTH/2 + SIZE/2;
          BonceSound.play();
        } else if (vx > 0) {
          // Reset its position to align with the left side of the right heart paddle
          x = p2HalfHeart.x - p2HalfHeart.WIDTH/2 - SIZE/2;
          BonceSound.play();
        }
        // And make it bounce
        vx = -vx;
      }
    }
  }
  // display()
  //
  // Draw the ball at its position

  void display() {
    // Set up the appearance of the ball as a Pink Heart png.
    imageMode(CENTER);
    image(pinkHeart, x, y);
    pinkHeart.resize(SIZE, SIZE);
  }
}