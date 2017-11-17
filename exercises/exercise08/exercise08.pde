Playfield playfield;

String pressedKeys = "";
String possibleKeys =  "2qaz3wsx4edc5rfv";
String possibleKeys2 = "6yhn7ujm8ik,9ol.";
char currentKey;
int score;
void setup() {
  score = 0;
  size(1200,600); 
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
  
  playfield = new Playfield();
  
}

void draw() {
  background(0);
  fill(255);
  textSize(50);
  text(currentKey, width/2, height/2 - 100);
  
  playfield.display();
  
}

void keyPressed() {
  // when the key being called is pressd
  if (key == currentKey) {
    //change keys
    pressedKeys += key;
    println(pressedKeys);
    println(currentKey);
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeys.length() == possibleKeys.length()) {
      println("YOU WIN!!!");
      return;
    }
    //the current is equal to random string that is converted into a char;
    currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    while (pressedKeys.indexOf(currentKey) != -1) {
      currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    }
  }
}


void keyReleased() {
  if (pressedKeys.indexOf(key) != -1) {
   println("YOU LOSE!");
  }
}