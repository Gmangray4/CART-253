// This controls what to do when the game is over.
// gameover is determind on the player's half heart speed.
// when the speed of ethier heart is 0 that player loses and the game is over. 

class EndGame {
  // sets an aray for the text when the game is over.
  // this aray claims who is the akward lover
  String[] TheAwkwardLoverText = new String[3];
  // this aray claims who wins
  String[] WinText = new String[3];

  // pickes which text to call 
  int TheAwkwardLoverIsP1OrP2 = 0;
  // used to stop the controls when the game is over. 
  boolean stopContolsWhenGameIsOver;

  EndGame() {

    // this text is so to make sure no text is displayed if it does by mistake. that's why the tet is contains nothing. 
    TheAwkwardLoverText[0] = "";
    // who is the Awkward Lover?
    TheAwkwardLoverText[1] = "P1 is the Awkward Lover";
    TheAwkwardLoverText[2] = "P2 is the Awkward Lover!";

    // makes sure no text is displayed if it does by mistake. that's why the tet is contains nothing.
    WinText[0] = "";
    // who wins?
    WinText[1] = "P2 Wins!";
    WinText[2] = "P1 Wins!";
  }
  void update() {
    // if the speed of the left half heart is 0 the code will
    //say player 2 wins and player 1 is the ackward lover.
    //stop the game's contols.
    //set player's 2 vitory emoji and Player 1's lose emoji
    if (p1HalfHeart.Speed == 0) {
      TheAwkwardLoverIsP1OrP2 = 1;
      stopContolsWhenGameIsOver = true;
      emoji.player2WinEmoji();
    }
    // if the speed of the right half heart is 0 the code will
    //say player1 wins and player 2 is the ackward lover.
    //stop the game's contols.
    //set player's 1 vitory emoji and Player 2's lose emoji.
    if (p2HalfHeart.Speed == 0) {
      TheAwkwardLoverIsP1OrP2 = 2;
      stopContolsWhenGameIsOver = true;
      emoji.player1WinEmoji();
    }
  }
  void display() {
    // if the speed of ehither half heart is 0 
    // Call which text to be displayed and display it. 
    if (p1HalfHeart.Speed == 0 || p2HalfHeart.Speed == 0) 
      textSize(30);
    fill(0, 0, 255);
    text(TheAwkwardLoverText[TheAwkwardLoverIsP1OrP2], 334, 300);
    fill(0, 255, 0);
    text(WinText[TheAwkwardLoverIsP1OrP2], 414, 350);
  }
}