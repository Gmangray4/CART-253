// Griddies
// by Pippin Barr
// MODIFIED BY: Gordon Gray. 

//  I made a new class named Jimmy. 
//  Jimmy as the same characteriscs of Griddle but is a cricle.
//  When Jimmy and Griddlie both interact or collide in the space they change color. 
//  if Jimmy and Griddies colide when Jimmy is Red, Griddies becomes purple.
//  if Jimmy and Griddies colide when Jimmy is green, Griddies becomes Red.
//  if Jimmy and Griddies colide when Griddies is purple, Jimmy becomes Green.
 // if Jimmy and Griddies colide when Griddies is Red, Jimmy becomes blue.

// A simple artificial life system on a grid. The "griddies" are squares that move
// around randomly, using energy to do so. They gain energy by overlapping with
// other griddies. If a griddie loses all its energy it dies.

// The size of a single grid element
int gridSize = 20;
// An array storing all the griddies
Griddie[] griddies = new Griddie[100];
Jimmy[] jimmy = new Jimmy[100];

// setup()
//
// Set up the window and the griddies

void setup() {
  // Set up the window size and framerate (lower so we can watch easier)
  size(640, 480);
  frameRate(10);

  // QUESTION: What does this for loop do?
  // This makes sure to set up the griddies aray for the number of array we have.
  // We have 100 arrays so we have to tell processing to created the initial starting
  // ponit for each Griddle.
  // also their position are randomizes so their not drawn on the same spot. 
  for (int i = 0; i < griddies.length; i++) {
    int x = floor(random(0, width/gridSize));
    int y = floor(random(0, height/gridSize));
    griddies[i] = new Griddie(x * gridSize, y * gridSize, gridSize);
  }
    for (int i = 0; i < jimmy.length; i++) {
    int x = floor(random(0, width/gridSize));
    int y = floor(random(0, height/gridSize));
    jimmy[i] = new Jimmy(x * gridSize, y * gridSize, gridSize);
  }
  
}

// draw()
//
// Update all the griddies, check for collisions between them, display them.

void draw() {
  background(50);

  // We need to loop through all the griddies one by one
  for (int i = 0; i < griddies.length; i++) { 
    // Update the griddies
    griddies[i].update();
    // Now go through all the griddies a second time...
    for (int j = 0; j < griddies.length; j++) {
      // QUESTION: What is this if-statement for?
      // if a griddlie is equal to the oppsite.
      if (j != i) {
        // QUESTION: What does this line check?
        // calls the collide method for collide.
        griddies[i].collide(griddies[j]);
      }
    }
    // Display the griddies
    griddies[i].display();
    jimmy[i].display();
  }
    for (int i = 0; i < jimmy.length; i++) { 
    // Update the griddies
    jimmy[i].update();
    // Now go through all the griddies a second time...
    for (int j = 0; j < jimmy.length; j++) {
      // QUESTION: What is this if-statement for?
      // if a griddlie is equal to the oppsite.
      if (j != i) {
        // QUESTION: What does this line check?
        // calls the collide method for collide.
        jimmy[i].collide(jimmy[j]);
      }
    }
  jimmy[i].display();
}
}