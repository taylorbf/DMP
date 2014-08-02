

class Ball {
  int r;
  int g;
  int b;
  int a;
  int xOffset;
  int yOffset;

  Ball(int rTemp, int gTemp, int bTemp, int  aTemp, int xTempOffset, int yTempOffset ) {
    r = rTemp;
    g = gTemp;
    b = bTemp;
    a = aTemp;
    xOffset = xTempOffset;
    yOffset = yTempOffset;
  }

  void ballDisplay() {
    
    for ( int i=0;i<300;i++) {
      noStroke();
      fill(r,g,b,a); 
      rectMode(CENTER);
      rect ( mouseX+xOffset, mouseY+yOffset, i, i);
    }
  }
}

