

class Playfield{
  // the color for player 1's keys
  color p1Col = color(255,0,0);
  // the color for player 2's keys
  color p2Col = color(0,0,255);
  // the color for when a key is dead
  color dead  = color(0);


  // colors for keys 2 to 0
  color rect2;
  color rect3;
  color rect4;
  color rect5;
  color rect7;
  color rect8;
  color rect9;
  color rect0;

  // colors for keys q to o
  color rectQ;
  color rectT;
  color rectY;
  color rectP;
  // colors for keys a to l
  color rectA;
  color rectG;
  color rectH;
  color rectSemicolon;
  
  // colors for keys z to .
  color rectZ;
  color rectX;
  color rectC;
  color rectV;
  color rectN;
  color rectM;
  color rectColon;
  color rectPeriod;
  // size of each on screen key
  int size = 75;
  
  // the constrctor for each on screen key.
  
  Playfield(){
  
  // Player 1's on screen keys.
  // color for rect keys 2 V

  rect2 = p1Col;
  rect3 = p1Col;
  rect4 = p1Col;
  rect5 = p1Col;
  rectQ = p1Col;
  rectT = p1Col;
  rectA = p1Col;
  rectG = p1Col;
  rectZ = p1Col;
  rectX = p1Col;
  rectC = p1Col;
  rectV = p1Col;
 
  //Player 2's on screen keys.
  // color for rect keys 6 to .

  rect7 = p2Col;
  rect8 = p2Col;
  rect9 = p2Col;
  rect0 = p2Col;
  rectY = p2Col;
  rectP = p2Col;
  rectH = p2Col;
  rectSemicolon = p2Col; 
  rectPeriod = p2Col;
  rectN = p2Col;
  rectM = p2Col;
  rectColon = p2Col;

  }
  
  // displaying the on screen keys and colors. 
  void display(){
    // 2 key
    fill(rect2);
    rect(125,250,size,size);
    //3
    fill(rect3);
    rect(205,250,size,size);
    // 4
    fill(rect4);
    rect(285,250,size,size);
    // 5
    fill(rect5);
    rect(365,250,size,size);
    //q
    fill(rectQ);
    rect(100,327,size,size);
   
    //t
    fill(rectT);
    rect(420,327,size,size);
    //a
    fill(rectA);
    rect(115,405,size,size);
   
    //g
    fill(rectG);
    rect(435,405,size,size);
    //z
    fill(rectZ);
    rect(145,483,size,size);
    //x
    fill(rectX);
    rect(225,483,size,size);
    //c
    fill(rectC);
    rect(305,483,size,size);
    //v
    fill(rectV);
    rect(385,483,size,size);
    
    //player 2
    // 7
    fill(rect7);
    rect(525,250,size,size);
    // 8
    fill(rect8);
    rect(605,250,size,size);
    // 9
    fill(rect9);
    rect(685,250,size,size);
    // 0
    fill(rect0);
    rect(765,250,size,size);
    //y
    fill(rectY);
    rect(500,327,size,size);
    //p
    fill(rectP);
    rect(820,327,size,size);
    //h
    fill(rectH);
    rect(515,405,size,size);
    
    //; or Semicolon
    fill(rectSemicolon);
    rect(835,405,size,size);
    
    //n
    fill(rectN);
    rect(545,483,size,size);
    //m
    fill(rectM);
    rect(625,483,size,size);
    //,
    fill(rectColon);
    rect(705,483,size,size);
    //,
    fill(rectPeriod);
    rect(785,483,size,size);
    
    // Target keys
    fill(255);
    // p1's target box
    rect(250,140,size,size);
    // p2's target box
    rect(575,140,size,size);
    
    // Taget text box for each player
    fill(0);
    textSize(40);
    text(currentKey, 277,190);
    text(currentKeyP2, 600,190);
    
    // key text which are display on top of the rects
    fill(255);
    text("2", 150,300);
    text("3", 230,300);
    text("4", 310,300);
    text("5", 390,300);
    text("7", 550,300);
    text("8", 630,300);
    text("9", 710,300);
    text("0", 790,300);
    text("q", 125,377);
    text("t", 445,377);
    text("y", 525,377); 
    text("p", 845,377); 
    text("a", 140,453);
    text("g", 460,450);
    text("h", 540,453);
    text("g", 460,450);
    text("h", 540,453);
    text(";", 860,453); 
    text("z",170,530);
    text("x",250,530);
    text("c",330,530);
    text("v",410,530);
    text("n",570,530);
    text("m",650,530);
    text(",",730,530);
    text(".",810,530);
    
    // Displays the cruent lap for each player separately.
    fill(0,255,0);
    text("Laps: " +  laps,100,50);
    text("Laps: " +  lapsP2,600,50);
    
    //This refills the keyColors back to Red when player 1 completes a lap. 
    if(fillColor == true){
    rect2 = color(255,0,0); 
    rect3 = color(255,0,0);  
    rect4 = color(255,0,0); 
    rect5 = color(255,0,0); 
    rectV = color(255,0,0); 
    rectQ = color(255,0,0); 
    rectT = color(255,0,0);
    rectG = color(255,0,0);
    rectA = color(255,0,0); 
    rectZ = color(255,0,0); 
    rectX = color(255,0,0); 
    rectC = color(255,0,0); 
    fillColor = false;
    }
      //This refills the keyColors back to Blue when player 2 completes a lap. 
     if (fillColorP2 == true){
    rectN = color(0,0,255); 
    rect7 = color(0,0,255); 
    rect8 = color(0,0,255); 
    rect9 = color(0,0,255);  
    rect0 = color(0,0,255); 
    rectP = color(0,0,255); 
    rectY = color(0,0,255); 
    rectH = color(0,0,255);
    rectM = color(0,0,255);
    rectSemicolon = color(0,0,255); 
    rectPeriod = color(0,0,255); 
    rectColon  = color(0,0,255); 
    fillColorP2 = false;
  }
  }
  // To keep this short...the color of the key is change to black and are consder dead when a current key has been pressed. 
  void keyPressed() { 
    // all if Player1 keys are killed
    if(key == currentKey && currentKey == '2'){
        rect2 = dead;   
    }
    if(key == currentKey && currentKey == '3'){
        rect3 = dead;   
    }
    if(key == currentKey && currentKey == '4'){
        rect4 = dead;   
    }
    if(key == currentKey && currentKey == '5'){
        rect5 = dead;   
    }
    
    if(key == currentKey && currentKey == 'q'){
        rectQ = dead;   
    }
  
    if(key == currentKey && currentKey == 't'){
        rectT = dead;   
    }
    if(key == currentKey && currentKey == 'a'){
        rectA = dead;   
    }
    
    if(key == currentKey && currentKey == 'g'){
        rectG = dead;   
    }
    if(key == currentKey && currentKey == 'z'){
        rectZ = dead;   
    }
    if(key == currentKey && currentKey == 'x'){
        rectX = dead;   
    }
    if(key == currentKey && currentKey == 'c'){
        rectC = dead;   
    }
    
    if(key == currentKey && currentKey == 'v'){
        rectV = dead;   
    }
    
    // all if Player2 keys are killed
    if(key == currentKeyP2 && currentKeyP2 == '7'){
        rect7 = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == '8'){
        rect8 = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == '9'){
        rect9 = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == '0'){
        rect0 = dead;   
    }
    
    if(key == currentKeyP2 && currentKeyP2 == 'y'){
        rectY = dead;   
    }
 
    if(key == currentKeyP2 && currentKeyP2 == 'p'){
        rectP = dead;   
    }

    
    if(key == currentKeyP2 && currentKeyP2 == ';'){
        rectSemicolon = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == 'h'){
        rectH = dead;   
    }
    
    if(key == currentKeyP2 && currentKeyP2 == 'n'){
        rectN = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == 'm'){
        rectM = dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == ','){
      rectColon= dead;   
    }
    if(key == currentKeyP2 && currentKeyP2 == '.'){
      rectPeriod  = dead;   
    }
  }
}