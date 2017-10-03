//The class is defined
class Bouncer {

// properties of the class
// set the coordinates, sets the speed, size, color, hover color. 
 int x;
 int y;
 int vx;
 int vy;
 int size;
 color fillColor;
 color defaultColor;
 color hoverColor;
 
 
 // The Constructor of the class and all the arguments that make the Object.
 //temp is used so you could set different properties for an extra Bouncer. 
 Bouncer(int tempX, int tempY, int tempVX, int tempVY, int tempSize, color tempDefaultColor, color tempHoverColor) {
   x = tempX;
   y = tempY;
   vx = tempVX;
   vy = tempVY;
   size = tempSize;
   defaultColor = tempDefaultColor;
   hoverColor = tempHoverColor;
   fillColor = defaultColor;
 }
 
 void update() {
  // Makes sure Bouncer is alwasy moving
   x += vx;
   y += vy;
   
   // calls theses functions.
   handleBounce();
   handleMouse();
 }
 
 //fuction for bouncing
 void handleBounce() {
  // checks if touching left or right side of screen. Bouces off if so.
   if (x - size/2 < 0 || x + size/2 > width) {
    vx = -vx; 
   }
   // checks if touching the top screen or bottom. Bouces off the top or bottom
   if (y - size/2 < 0 || y + size/2 > height) {
     vy = -vy;
   }
   //makes sure that Bouncer never goes of the screen
   x = constrain(x,size/2,width-size/2);
   y = constrain(y,size/2,height-size/2);
 }
 // if mouse is hovering over the bouncer changes color. If not goes back to original
 void handleMouse() {
   if (dist(mouseX,mouseY,x,y) < size/2) {
    fillColor = hoverColor; 
   }
   else {
     fillColor = defaultColor;
   }
 }
 //creates the circles for the bouncer. 
 void draw() {
   noStroke();
   fill(fillColor);
   ellipse(x,y,size,size);
 }
}