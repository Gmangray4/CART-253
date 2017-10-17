//Emoji

// This class controls how the Emojis will change.

class Emoji {
  //size and Emoji number
  int player1Emoji = 0;
  int player2Emoji = 0;
  int size = 100; 

  Emoji() {
    // this loads the images in an array.
    PlayerEmoji[0] = loadImage("emoji_0.png");  // Start emoji
    PlayerEmoji[1] = loadImage("emoji_1.png");  // win emoji
    PlayerEmoji[2] = loadImage("emoji_2.png");  // lose emoji
    PlayerEmoji[3] = loadImage("emoji_3.png");  // Mad emoji
    PlayerEmoji[4] = loadImage("emoji_4.png");  // love emoji
  }
  // which emoji to call if player 1 wins
  void player1WinEmoji() {
    player1Emoji = 1;
    player2Emoji = 2;
  }
  // which emoji to call if player 2 wins
  void player2WinEmoji() {
    player1Emoji = 2;
    player2Emoji = 1;
  }
  //If the ball scores right calss these emojis
  void EmojiIfOfScreenRight() {
    player1Emoji = 4;
    player2Emoji = 3;
  }
  //If the ball scores left calss these emojis
  void EmojiIfOfScreenLeft() {
    player1Emoji = 3;
    player2Emoji = 4;
  }
  //Draw, resize and where to place the Emoji.
  void display() {
    imageMode(CENTER);
    image(PlayerEmoji[player1Emoji], 90, 70);
    image(PlayerEmoji[player2Emoji], 930, 70);
    PlayerEmoji[0].resize(size, size);
    PlayerEmoji[1].resize(size, size);
    PlayerEmoji[2].resize(size, size);
    PlayerEmoji[3].resize(size, size);
    PlayerEmoji[4].resize(size, size);
  }
}