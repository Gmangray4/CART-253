//My Own BackGround class

// this class allows the background color to incesse redness from black to red when a score happens on either side. 

class Background {
  // the players sarting  side of screens color.
  int player1Color = 0;
  int player2Color = 0;
  Background() {
  }

// the backgorund is displayed as 2 rects that fill the screen
  void display() {
    noStroke();
    fill(player1Color, 0, 0);
    rect(0, 0, 1050, 2000);
    noStroke();
    fill(player2Color, 0, 0);
    rect(780, 0, 550, 2000);
  }
  //incress the redness when called of player 1's side 
  void increaseLoveColorP1() {
    player1Color +=12.5;
  }
  //incress the redness when called of player 2's side 
  void increaseLoveColorP2() {
    player2Color +=12.5;
  }
}