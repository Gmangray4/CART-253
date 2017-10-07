class Text {

  String[] loverP1Text = new String[20];        //this is player's 1 awckawrd love text when they score a ponit. 
  String[] loverP2Text = new String[20];        //player's 2 awckawrd love text when they score a ponit.
  
  int textNumberForP1;
  int textNumberForP2;
  ;

  Text() {
    loverP1Text[0] = "...";
    loverP1Text[1] = "Nope";
    loverP1Text[2] = "Your a good Friend.";
    loverP1Text[3] = "Who are you again?";
    loverP1Text[4] = "I'm seeing someone";
    loverP1Text[5] = "Me + U = 0";
    loverP1Text[6] = "Why";
    loverP1Text[7] = "The feelings Dead";
    loverP1Text[8] = "Boring";
    loverP1Text[9] = "O_O";
//if scored agasit 
    loverP1Text[10] = "Your Cute!";
    loverP1Text[11] = "I'm Single!";
    loverP1Text[12] = "Kiss Me!";
    loverP1Text[13] = "I Love U!";
    loverP1Text[14] = "Marry Me!";
    loverP1Text[15] = "I'll wait for you";
    loverP1Text[16] = "ahh Hugs?";
    loverP1Text[17] = "Come Here Often?";
    loverP1Text[18] = "Hey Sugar Pie";
    loverP1Text[19] = ":D";

    loverP2Text[0] = "...";
    loverP2Text[1] = "Nope";
    loverP2Text[2] = "Your a good Friend.";
    loverP2Text[3] = "Who are you again?";
    loverP2Text[4] = "I'm seeing someone";
    loverP2Text[5] = "Me + U = 0";
    loverP2Text[6] = "Why";
    loverP2Text[7] = "The feelings Dead";
    loverP2Text[8] = "Boring";
    loverP2Text[9] = "O_O";
// socre ags
    loverP2Text[10] = "Your Cute!";
    loverP2Text[11] = "I'm Single!";
    loverP2Text[12] = "Kiss Me!";
    loverP2Text[13] = "I Love U!";
    loverP2Text[14] = "Marry Me!";
    loverP2Text[15] = "I'll wait for you";
    loverP2Text[16] = "ahh Hugs?";
    loverP2Text[17] = "Come Here Often?";
    loverP2Text[18] = "Hey Sugar Pie";
    loverP2Text[19] = ":D";
    
    textNumberForP1 = 0;
    textNumberForP2 = 0;
  }
   
  void display()
  {
    textSize(30);
    fill(255);
    textMode(CENTER);
    text(loverP1Text[textNumberForP1], 50, 570);
    fill(0);
    text(loverP2Text[textNumberForP2], 700, 570);
  }
  
  void changeTextOfScreenRight(){
  
    textNumberForP1 = floor(random(10,19));
    textNumberForP2 = floor(random(0,9));

  }
  void changeTextOfScreenLeft(){
  
    textNumberForP1 = floor(random(0,9));
    textNumberForP2 = floor(random(10,19));

  } 
}