class EndGame {

  String[] TheAwkwardLoverText = new String[3];
  String[] WinText = new String[3];

  int TheAwkwardLoverIsP1OrP2 = 0;
  boolean stopContolsWhenGameIsOver;
 

  EndGame() {

    TheAwkwardLoverText[0] = "";
    TheAwkwardLoverText[1] = "P1 is the Awkward Lover";
    TheAwkwardLoverText[2] = "P2 is the Awkward Lover!";

    WinText[0] = "";
    WinText[1] = "P2 Wins!";
    WinText[2] = "P1 Wins!";
    
 
  }

  void update() {
    if (p1HalfHeart.Speed == 0) {
      TheAwkwardLoverIsP1OrP2 = 1;
      stopContolsWhenGameIsOver = true;
      emoji.player2WinEmoji();

      
    }
    if (p2HalfHeart.Speed == 0) {
      TheAwkwardLoverIsP1OrP2 = 2;
      stopContolsWhenGameIsOver = true;
      emoji.player1WinEmoji();
    }
  }

  void display() {
    if (p1HalfHeart.Speed == 0 || p2HalfHeart.Speed == 0) {
      textSize(30);
      fill(0, 0, 255);
      text(TheAwkwardLoverText[TheAwkwardLoverIsP1OrP2], 334, 300);
      fill(0, 255, 0);
      text(WinText[TheAwkwardLoverIsP1OrP2], 414, 350);
    }
  }
}