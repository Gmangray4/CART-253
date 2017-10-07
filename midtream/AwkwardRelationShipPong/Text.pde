class Text {

  String[] loverP1Text = new String[20];        //this is player's 1 awckawrd love text when they score a ponit. 
  String[] loverP2Text = new String[20];        //player's 2 awckawrd love text when they score a ponit.
  
  int textNumberForP1;
  int textNumberForP2;
  ;

  Text() {
    loverP1Text[0] = "...";
    loverP1Text[1] = "Huh?";
    loverP1Text[2] = "Noooooo!";
    loverP1Text[3] = "I'don't";
    loverP1Text[4] = "Are You There";
    loverP1Text[5] = "";
    loverP1Text[6] = "ss";
    loverP1Text[7] = "ss";
    loverP1Text[8] = "ss";
    loverP1Text[9] = "O_O";
//if scored agasit 
    loverP1Text[10] = "Your Cute!";
    loverP1Text[11] = "I'm Single!";
    loverP1Text[12] = "Kiss Me!";
    loverP1Text[13] = "I Love You!";
    loverP1Text[14] = "Marry Me!";
    loverP1Text[15] = "...";
    loverP1Text[16] = "...";
    loverP1Text[17] = "...";
    loverP1Text[18] = "...";
    loverP1Text[19] = ":D";

    loverP2Text[0] = "...";
    loverP2Text[1] = "Huh?";
    loverP2Text[2] = "...";
    loverP2Text[3] = "ss";
    loverP2Text[4] = "ss";
    loverP2Text[5] = "ss";
    loverP2Text[6] = "ss";
    loverP2Text[7] = "ss";
    loverP2Text[8] = "ss";
    loverP2Text[9] = "O_O";
// socre ags
    loverP2Text[10] = "..";
    loverP2Text[11] = "I'm Single";
    loverP2Text[12] = "opps I sliped";
    loverP2Text[13] = "...";
    loverP2Text[14] = "...";
    loverP2Text[15] = "...";
    loverP2Text[16] = "...";
    loverP2Text[17] = "...";
    loverP2Text[18] = "...";
    loverP2Text[19] = ":D";
    
    textNumberForP1 = 0;
    textNumberForP2 = 0;
  }
  
  void display()
  {
    textSize(50);
    fill(0);
    textMode(CENTER);
    text(loverP1Text[textNumberForP1], 50, 570);
    text(loverP2Text[textNumberForP2], 700, 570);
  }
  
  void changeTextOfScreenRight(){
  
    textNumberForP1 = floor(random(0,9));
    textNumberForP2 = floor(random(10,19));

  }
  void changeTextOfScreenLeft(){
  
    textNumberForP1 = floor(random(10,19));
    textNumberForP2 = floor(random(0,9));

  } 
}