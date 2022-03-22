LetterSquare[] letterSquares = new LetterSquare[30];
TextBox textBox;
String l1;
String l2;
String l3;
String l4;
String l5;
String word;
String[] lines;
String letter;
int num;


void setup() {
  size(500, 700);
  num = 1;
  textBox = new TextBox(0, 700, "     ");
  lines = loadStrings("Words.txt");
  word = lines[int(random(0, lines.length))];
  l1 = Character.toString(word.charAt(0));
  l2 = Character.toString(word.charAt(1));
  l3 = Character.toString(word.charAt(2));
  l4 = Character.toString(word.charAt(3));
  l5 = Character.toString(word.charAt(4));
  
  //row 1
  letterSquares[0] = new LetterSquare(0, 0, 100, 100, 3, "", l1, true);
  letterSquares[1] = new LetterSquare(100, 0, 100, 100, 3, "", l2, true);
  letterSquares[2] = new LetterSquare(200, 0, 100, 100, 3, "", l3, true);
  letterSquares[3] = new LetterSquare(300, 0, 100, 100, 3, "", l4, true);
  letterSquares[4] = new LetterSquare(400, 0, 100, 100, 3, "", l5, true);

  //row 2
  letterSquares[5] = new LetterSquare(0, 100, 100, 100, 3, "", l1, true);
  letterSquares[6] = new LetterSquare(100, 100, 100, 100, 3, "", l2, true);
  letterSquares[7] = new LetterSquare(200, 100, 100, 100, 3, "", l3, true);
  letterSquares[8] = new LetterSquare(300, 100, 100, 100, 3, "", l4, true);
  letterSquares[9] = new LetterSquare(400, 100, 100, 100, 3, "", l5, true);

  //row 3
  letterSquares[10] = new LetterSquare(0, 200, 100, 100, 3, "", l1, true);
  letterSquares[11] = new LetterSquare(100, 200, 100, 100, 3, "", l2, true);
  letterSquares[12] = new LetterSquare(200, 200, 100, 100, 3, "", l3, true);
  letterSquares[13] = new LetterSquare(300, 200, 100, 100, 3, "", l4, true);
  letterSquares[14] = new LetterSquare(400, 200, 100, 100, 3, "", l5, true);

  //row 4
  letterSquares[15] = new LetterSquare(0, 300, 100, 100, 3, "", l1, true);
  letterSquares[16] = new LetterSquare(100, 300, 100, 100, 3, "", l2, true);
  letterSquares[17] = new LetterSquare(200, 300, 100, 100, 3, "", l3, true);
  letterSquares[18] = new LetterSquare(300, 300, 100, 100, 3, "", l4, true);
  letterSquares[19] = new LetterSquare(400, 300, 100, 100, 3, "", l5, true);

  //row 5
  letterSquares[20] = new LetterSquare(0, 400, 100, 100, 3, "", l1, true);
  letterSquares[21] = new LetterSquare(100, 400, 100, 100, 3, "", l2, true);
  letterSquares[22] = new LetterSquare(200, 400, 100, 100, 3, "", l3, true);
  letterSquares[23] = new LetterSquare(300, 400, 100, 100, 3, "", l4, true);
  letterSquares[24] = new LetterSquare(400, 400, 100, 100, 3, "", l5, true);

  //row 6
  letterSquares[25] = new LetterSquare(0, 500, 100, 100, 3, "", l1, true);
  letterSquares[26] = new LetterSquare(100, 500, 100, 100, 3, "", l2, true);
  letterSquares[27] = new LetterSquare(200, 500, 100, 100, 3, "", l3, true);
  letterSquares[28] = new LetterSquare(300, 500, 100, 100, 3, "", l4, true);
  letterSquares[29] = new LetterSquare(400, 500, 100, 100, 3, "", l5, true);
}

void draw() {
  background(0);
  println(word);
  for (int i = 0; i < letterSquares.length; i++) {
    letterSquares[i].hover();
    letterSquares[i].display();
  }
  textBox.display();
  if (keyPressed) {
    keyReleased();
  }
}

void keyReleased() {
  println(key);
  for (int i = 0; i < letterSquares.length; i++) {
      println(i);
    if (letterSquares[i].c1 != #23FF03 && keyCode >= 65) {
      letterSquares[i].val = Character.toString(key);
      }
    if (letterSquares[i].val.equals(letterSquares[i].gText)) {
      letterSquares[i].c1 = #23FF03;
    } else if (letterSquares[i].val.equals(l1) || letterSquares[i].val.equals(l2) || letterSquares[i].val.equals(l3) || letterSquares[i].val.equals(l4) || letterSquares[i].val.equals(l5)) {
      letterSquares[i].c1 = #F5FA00;
    } else {
      letterSquares[i].c1 = #CBC5C5;
    }
  }
}
