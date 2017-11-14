//

//class
Text text;

char currentKey;
char[] newKey = new char[6];
String[] currentKeyText = new String[6];


int keyNumber;

void setup() {
  size(1200, 650);

  text = new Text();

  newKey[0] = 'a';
  newKey[1] = 'b';
  newKey[2] = 'c';
  newKey[3] = 'd';
  newKey[4] = 'e';
  newKey[5] = 'f';


  keyNumber = floor(random(0, 4));
}

void draw() {
  background(255);

  text.update();
  text.display();

  //println(currentKey);
}

void keyPressed() {

  println(key);

  if (key == currentKey) {
    println("Got ut!");
    keyNumber = floor(random(0, 4));
    while (currentKey == newKey[keyNumber]) {
      keyNumber = floor(random(0, 4));
    }
    currentKey = newKey[keyNumber];
  }
} 
void keyReleased() {
}