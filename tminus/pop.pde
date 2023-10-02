float widthSquare, heightSquare;
int numPadColumns = 3;
float[] x = new float [numPadColumns];
int numPadRows = 5;
float[] y = new float [numPadRows];
float border=0.0;
float writeCoordinate (int i, int oddStart) {
  return border + ( widthSquare*(2*i+oddStart)/2 );
}
void population() {
  widthSquare = appWidth*1/4;
  heightSquare = widthSquare;
  if ( widthSquare*8 <= appHeight ) {
    println("true");
    // Empty IF
  } else {
    println("false");
    widthSquare = heightSquare = appHeight*1/8;
    border = appWidth - ( widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
    border = border*1/2;
  }
  for ( int i=0; i<numPadRows; i++ ) {
    if ( i<numPadColumns ) x[i] = writeCoordinate(i, 1);
    y[i] = writeCoordinate(i, 5);
  }
  //printArray(x);
  //printArray(y);
}
