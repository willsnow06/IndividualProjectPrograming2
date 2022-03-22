class TextBox{
  String text;
  int x, y;
  
  //Constructor
  TextBox(int x, int y, String text){
    this.x = x;
    this.y = y;
    this.text = text;
  }
  
  void display() {
    fill(#03FF00);
    textAlign(LEFT);
    textSize(75);
    text(text, x, y);
  }
}
