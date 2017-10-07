class Background{
  
  int player1Color;
  int player2Color;
  Background(){
  }
  
  void update(){
  
  }
  void display(){
    noStroke();
    fill(0,0,0);
    rect(0, 0,1050,2000);
    noStroke();
    fill(255,255,255);
    rect(780, 0,550,2000);
  }
}