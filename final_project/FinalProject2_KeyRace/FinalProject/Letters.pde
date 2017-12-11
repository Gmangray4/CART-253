class Letter {
 
  char c;
  float x;
  float y;
  boolean active = false;
  
  Letter (char _c, float _x, float _y) {
    c = _c;
    x = _x;
    y = _y;
  }
  
  void display() {
    fill(255);
    rectMode(CENTER);
    rect(x,y,20,20);
    if (active) {
      fill (255,0,0);
    }
    else {
      fill (0);
    }
    textAlign(CENTER);
    text(c,x,y);
  }
}