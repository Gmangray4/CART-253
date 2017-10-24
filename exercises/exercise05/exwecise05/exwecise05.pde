//Gordon Gray

// Rabbit Stair down!

// what I did was make to bunny's have a consent stairdown with each other.
// they walk and move but are always facing each other. 
//
// I did this by using pushMatrix(); and popMatrix();
// I first created the image and then translated it's scacle to -1 so that the image flips like a mirror.
// I also have an anmation for the bunny which works useing arrays and sin and maps. 
// When they are not moving the have an idle anmation
// when they are moving they have an running anmation.
//
// Aslo you contorl the bunnys using the below keys to move around and off the sreen.
// 
// w = up  
// D = Down
// A = left
// D = Right

Bunny bunny;
// the images for the bunny's body.
PImage[] body = new PImage[6];

//the bunny Speed and size
  int SPEED = 25;
  int SIZE = 100;
  // The location of the bunny
  int x;
  int y;

  // The velocity of the bunny
  int vx;
  int vy;

void setup()  {  
size(800,600);  
//creates the bunny at it's location gives it's controls. 
bunny = new Bunny(width/2, height/2, 'w', 's', 'a', 'd');

}

void draw()
{
  background(30,255,0);
  bunny.update();
  bunny.display();
}
void keyPressed(){
  bunny.keyPressed();
}

void keyReleased(){
bunny.keyReleased();
}