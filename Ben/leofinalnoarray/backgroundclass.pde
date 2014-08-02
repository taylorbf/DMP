

class Back{
  int[] xpos =new int[500];
  int[] ypos =new int [500];
  int r;
  int g;
  int b;
  int a;
  int xOffset;
  int yOffset;

  Back(int rTemp, int gTemp, int bTemp, int  aTemp, int xTempOffset, int yTempOffset ) {
    r = rTemp;
    g = gTemp;
    b = bTemp;
    a = aTemp;
    xOffset = xTempOffset;
    yOffset = yTempOffset;
    for ( int i=0;i<xpos.length; i++) {
      xpos[i]=0;
      ypos[i]=0;
    }
  }

  void backDisplay() {
    
    for ( int  i=0;i<xpos.length-1;i++) {
      xpos [i] =xpos [i+1];
      ypos [i]= ypos [i+1];
    }
    xpos[xpos.length-1]= width;
    ypos[ypos.length-1]= height; 
    for ( int i=0;i<xpos.length;i++) {
      noStroke();
      fill(r,g,b,a); 
      rectMode(CORNER);
      rect ( xpos[i], ypos[i], i, i);
    }
  }
}

