void setup() {
  size (400, 500);
  display();
  population();
  textSetup();
}
void draw() {
  numPadRects();
  String one="1";
  textDraw( purple, CENTER, CENTER, font, one, x[0], y[0], widthSquare, heightSquare );
}
void mousePressed() {
  // if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  int buttonCounter = 1;
  for ( int i=0; i<numPadColumns; i++ ) {
    for ( int j=0; j<numPadRows; j++ ) {
      println(i, j);
      if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare ) println("Button #:", buttonCounter);
      buttonCounter++;
    }
  }
}
void keyPressed() {
}
