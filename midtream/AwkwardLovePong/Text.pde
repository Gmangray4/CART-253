//Text

class Text {
  //this is player's 1 awckawrd love text when they score a ponit. 
  String[] loverP1Text = new String[27]; 
  //player's 2 awckawrd love text when they score a ponit.
  String[] loverP2Text = new String[27];        

  int textNumberForP1;
  int textNumberForP2;

  Text() {
    //when scored say
    loverP1Text[0] = "...";
    loverP1Text[1] = "Nope!";
    loverP1Text[2] = "Your a good Friend.";
    loverP1Text[3] = "Who are you again?";
    loverP1Text[4] = "I'm seeing someone.";
    loverP1Text[5] = "Me + U = 0";
    loverP1Text[6] = "But We Just Met?";
    loverP1Text[7] = "The feelings Dead.";
    loverP1Text[8] = "Chuck Norris Doesn't Approve.";
    loverP1Text[9] = "It's Never Going to Happen.";
    loverP1Text[10] = "O_O";
    //when score on say
    loverP1Text[11] = "Your Cute!";
    loverP1Text[12] = "I'm Single!";
    loverP1Text[13] = "Kiss Me!";
    loverP1Text[14] = "I Love U!";
    loverP1Text[15] = "Marry Me!";
    loverP1Text[16] = "I'll wait for you";
    loverP1Text[17] = "ahh Hugs?";
    loverP1Text[18] = "Come Here Often?";
    loverP1Text[19] = "Hey Sugar Pie.";
    loverP1Text[20] = "You're the meme of my dreams.";
    loverP1Text[21] = "U a Keyboard Cause Ur My Type.";
    loverP1Text[22] = "If U Were a Booger I'd Pick U.";
    loverP1Text[23] = "U a Broom Cause U Just Swept Me.";
    loverP1Text[24] = "U a Loto Ticket? I'd Scratch U.";
    loverP1Text[25] = "U Fart? Because U Blow me Away.";
    loverP1Text[26] = ":D";
    //when scored say
    loverP2Text[0] = "...";
    loverP2Text[1] = "Nope!";
    loverP2Text[2] = "Your a good Friend.";
    loverP2Text[3] = "Who are you Again?";
    loverP2Text[4] = "I'm Seeing Someone.";
    loverP2Text[5] = "Me + U = 0";
    loverP2Text[6] = "Dating Tips: Don't!";
    loverP2Text[7] = "The Feelings Dead.";
    loverP2Text[8] = "Chuck Norris Doesn't Approve.";
    loverP2Text[9] = "It's Never Going to Happen.";
    loverP2Text[10] = "O_O";
    // when score on say
    loverP2Text[11] = "Your Cute!";
    loverP2Text[12] = "I'm Single!";
    loverP2Text[13] = "Kiss Me!";
    loverP2Text[14] = "I Love U!";
    loverP2Text[15] = "Marry Me!";
    loverP2Text[16] = "I'll wait for you";
    loverP2Text[17] = "ahh Hugs?";
    loverP2Text[18] = "Come Here Often?";
    loverP2Text[19] = "Hey Sugar Pie";
    loverP2Text[20] = "You're the meme of my dreams";
    loverP2Text[21] = "U a Keyboard Cause Ur My Type.";
    loverP2Text[22] = "If U Were a Booger I'd Pick U.";
    loverP2Text[23] = "U a Broom Cause U Just Swept Me.";
    loverP2Text[24] = "U a Loto Ticket? I'd Scratch U.";
    loverP2Text[25] = "U Fart? Because U Blow me Away.";
    loverP2Text[26] = ":D";

    textNumberForP1 = 0;
    textNumberForP2 = 0;
  }

  void display()
  {
    textSize(30);
    fill(255);
    text(loverP1Text[textNumberForP1], 15, 570);
    fill(255);
    text(loverP2Text[textNumberForP2], 530, 570);
  }
  // when the ball goes of the screen on the right give a random comment
  void changeTextOfScreenRight() {
    textNumberForP1 = floor(random(11, 26));
    textNumberForP2 = floor(random(0, 10));
  }
  // when the ball goes of the screen on the left give a random comment
  void changeTextOfScreenLeft() {
    textNumberForP1 = floor(random(0, 10));
    textNumberForP2 = floor(random(11, 26));
  }
}