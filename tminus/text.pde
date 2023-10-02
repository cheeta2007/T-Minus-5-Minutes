PFont font;
color purple=#ED03FF, white=#FFFFFF;
//
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  //
  font = createFont ("Harrington", 55);
}
void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight ) {
  fill( ink );
  textAlign ( alignX, alignY);
  float size = textCalculator(rectWidth, text) ;
  println("4. ", textWidth(text), rectWidth, size);
  textFont(font, size);
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill( white );
}
float textCalculator( float rectWidth, String text) {
  float size = appWidth;
  textSize(size);
  println("1. ", textWidth(text), rectWidth, size);
  while ( textWidth (text) >= rectWidth ) {
    size = size * 0.99;
    textSize ( size );
  }
  textSize ( size );
  println("2. ", textWidth (text), rectWidth, size);
  size = textWidth (text);
  textSize ( size );
  println("3. ", textWidth (text), rectWidth, size);
  return size;
}
