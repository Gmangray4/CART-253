//Jimmy the Blue Circle!

class Jimmy{
 int maxEnergy = 255;
  int moveEnergy = -1;
  int collideEnergy = 10;
  
  // Position, size, energy, and fill color
  int x;
  int y;
  int size;
  int energy;
  color fill = color(0,0,255);
  
  Jimmy(int tempX, int tempY, int tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    energy = maxEnergy;
  }
  void update() {
    
    // QUESTION: What is this if-statement for?
    // if a Griddle dies out send out true. 
    if (energy == 0) {
      return;
    }
    
    // QUESTION: How does the Griddie movement updating work?
    // updates the movement randomly and the size.
    int xMoveType = floor(random(-1,2));
    int yMoveType = floor(random(-1,2));
    x += size * xMoveType;
    y += size * yMoveType;
    
    // QUESTION: What are these if statements doing?
    // makes sure that Griddie stays in within the window. 
    if (x < 0) {
      x += width;
    }
    else if (x >= width) {
      x -= width;
    }
    if (y < 0) {
      y += height;
    }
    else if (y >= height) {
      y -= height;
    }
    // Update the Griddie's energy
    // Note that moveEnergy is negative, so this _loses_ energy
    energy += moveEnergy;
    
    // Constrain the Griddies energy level to be within the defined bounds
    energy = constrain(energy,0,maxEnergy);
  }

  // collide(other)
  //
  // Checks for collision with the other Griddie
  // and updates energy level
  
  void collide(Jimmy other) {
    // QUESTION: What is this if-statement for?
    // if any energy reachs 0 sound out ture. 
    if (energy == 0 || other.energy == 0) {
      return;
    }
    
    // QUESTION: What does this if-statement check?
    // when a Griddle colides with another increass it's energy.
    if (x == other.x && y == other.y) {
      // Increase this Griddie's energy
      energy += collideEnergy;
      // Constrain the energy level to be within bounds
      energy = constrain(energy,0,maxEnergy);
    }
  }

  // display()
  //
  // Draw the Griddie on the screen as a rectangle
  void display() {
    // QUESTION: What does this fill line do?
    // it seets the feel color and upadtes the fade with the amoutn of energy left. 
    fill(fill, energy); 
    noStroke();
    ellipse(x, y, size, size);
  }
}