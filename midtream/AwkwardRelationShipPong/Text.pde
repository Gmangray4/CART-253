class Text{

String[] loverP1Score = new String[10];        //this is player's 1 awckawrd love text when they score a ponit. 
String[] loverP1NotScore = new String[10];     //player's 1 comment if P2 scores.

String[] loverP2Score = new String[10];        //player's 2 awckawrd love text when they score a ponit.
String[] loverP2NotScore = new String[10];     //player's 2 comment if P1 scores.

  Text() {
  loverP1Score[0] = "Hakward";
  loverP1Score[1] = "Huh?";
  loverP1Score[2] = "Noooooo!";
  loverP1Score[3] = "I'don't";
  loverP1Score[4] = "Are You There";
  loverP1Score[5] = "";
  loverP1Score[6] = "ss";
  loverP1Score[7] = "ss";
  loverP1Score[8] = "ss";
  loverP1Score[9] = "O_O";
  
  loverP1NotScore[0] = "Your Cute!";
  loverP1NotScore[1] = "I'm Single!";
  loverP1NotScore[2] = "Kiss Me!";
  loverP1NotScore[3] = "I Love You!";
  loverP1NotScore[4] = "Marry Me!";
  loverP1NotScore[5] = "...";
  loverP1NotScore[6] = "...";
  loverP1NotScore[7] = "...";
  loverP1NotScore[8] = "...";
  loverP1NotScore[9] = ":D";
  
  loverP2Score[0] = "Hakward";
  loverP2Score[1] = "Huh?";
  loverP2Score[2] = "...";
  loverP2Score[3] = "ss";
  loverP2Score[4] = "ss";
  loverP2Score[5] = "ss";
  loverP2Score[6] = "ss";
  loverP2Score[7] = "ss";
  loverP2Score[8] = "ss";
  loverP2Score[9] = "O_O";
  
  loverP2NotScore[0] = "..";
  loverP2NotScore[1] = "I'm Single";
  loverP2NotScore[2] = "opps I sliped";
  loverP2NotScore[3] = "...";
  loverP2NotScore[4] = "...";
  loverP2NotScore[5] = "...";
  loverP2NotScore[6] = "...";
  loverP2NotScore[7] = "...";
  loverP2NotScore[8] = "...";
  loverP2NotScore[9] = ":D";
  

  }
void update()
  {
    textSize(30);
    fill(255,0,0);
    text(loverP1Score[floor(random(0,9))], 20, 500);   
    text(loverP1NotScore[floor(random(0,9))], 20, 500);  
  }
}