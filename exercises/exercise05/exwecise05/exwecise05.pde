Bunny bunny;

PImage[] body = new PImage[6];
int[] sizes = {0,10,15,20,25,30,35,40};
 
  
  int SPEED = 25;
  int SIZE = 100;
  // The location of the ball
  int x;
  int y;

  // The velocity of the ball
  int vx;
  int vy;

void setup()  {  
  
size(800,600);  
  
bunny = new Bunny(x, y, 'w', 's', 'a', 'd');
  
}

void draw()
{
  background(0);
  bunny.update();
  bunny.display();
}
void keyPressed(){

  bunny.keyPressed();
  
}