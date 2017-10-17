//PlayerControls

// this class is to change the player's key contols the closer their heart gets to the center of the screen.
// The key controls change is determind with the speed of the left or right heart paddle. 
// when the left or right hearts speed drops the key controls change.

class PlayerControls {
  // this is to display the current controls
  String ControlTextUp1;
  String ControlTextDown1;
  String ControlTextUp2;
  String ControlTextDown2;

  PlayerControls() {
    // desplayes the start controls
    ControlTextUp1 = "q";
    ControlTextDown1= "a";
    ControlTextUp2 = "p";
    ControlTextDown2 = ";";
  }

  void Update() {
    //Player1's half heart speed is 15 change the controls and control display
    if (p1HalfHeart.Speed == 15) {
      Up1 = 'w';
      Down1 = 's';
      ControlTextUp1 = "w";
      ControlTextDown1= "s";
    }
    // Player1's half heart speed is 10 change the controls and control display
    if (p1HalfHeart.Speed == 10) {
      Up1 = 'e';
      Down1 = 'd';
      ControlTextUp1 = "e";
      ControlTextDown1= "d";
    }
    // Player1's half heart speed is 7 change the controls and control display
    if (p1HalfHeart.Speed == 7) {
      Up1 = 'r';
      Down1 = 'f';
      ControlTextUp1 = "r";
      ControlTextDown1= "f";
    }
    // Player1's half heart speed is 3 change the controls and control display
    if (p1HalfHeart.Speed == 3) {
      Up1 = 't';
      Down1 = 'g';
      ControlTextUp1 = "t";
      ControlTextDown1= "g";
    }
    // Player2's half heart speed is 15 change the controls and control display
    if (p2HalfHeart.Speed == 15) {
      Up2 = 'o';
      Down2 = 'l';
      ControlTextUp2 = "o";
      ControlTextDown2 = "l";
    }
    // Player2's half heart speed is 10 change the controls and control display
    if (p2HalfHeart.Speed == 10) {
      Up2 = 'i';
      Down2 = 'k';
      ControlTextUp2 = "i";
      ControlTextDown2 = "k";
    }
    // Player2's half heart speed is 7 change the controls and control display
    if (p2HalfHeart.Speed == 7) {
      Up2 = 'u';
      Down2 = 'j';
      ControlTextUp2 = "u";
      ControlTextDown2 = "j";
    }
    // Player2's half heart speed is 3 change the controls and control display
    if (p2HalfHeart.Speed == 3) {
      Up2 = 'y';
      Down2 = 'h';
      ControlTextUp2 = "y";
      ControlTextDown2 = "h";
    }

    // Sets the control for up and down for the left paddle.
    leftPaddle.upKey = Up1;
    leftPaddle.downKey = Down1;
    // Sets the control for up and down for the right paddle.
    rightPaddle.upKey = Up2;
    rightPaddle.downKey = Down2;
    // Sets the control for up and down for the right half heart paddle.
    p1HalfHeart.upKey = Up1;
    p1HalfHeart.downKey = Down1;
    // Sets the control for up and down for the left half heart paddle.
    p2HalfHeart.upKey = Up2;
    p2HalfHeart.downKey = Down2;
  }

  //displayes the player's current controls.
  void display() {
    textSize(100);
    fill(100, 100, 255, 96);
    text(ControlTextUp1, 250, 100);
    text(ControlTextDown1, 250, 515);
    text(ControlTextUp2, 700, 100);
    text(ControlTextDown2, 700, 515);
  }
}