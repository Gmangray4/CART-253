Bunny bunny;

PImage[] body = new PImage[6];

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