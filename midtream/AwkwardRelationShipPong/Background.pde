class Background{
  
  int player1Color = 0;
  int player2Color = 0;
  Background(){
  }
  
  void display(){
    noStroke();
    fill(player1Color,0,0);
    rect(0, 0,1050,2000);
    noStroke();
    fill(player2Color,0,0);
    rect(780, 0,550,2000);
  }
  
  void increaseLoveColorP1(){
    player1Color +=12.5;
  }
  void increaseLoveColorP2(){
    player2Color +=12.5;
  }
  
}