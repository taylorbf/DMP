class Ball {
  int[] xpos =new int[300];
  int[]ypos=new int [300];
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
    for ( int i=0;i<xpos.length; i++) {
      xpos[i]=0;
      ypos[i]=0;
    }
  }

  void ballDisplay() {
    
    for ( int  i=0;i<xpos.length-1;i++) {
      xpos [i] =xpos [i+1];
      ypos [i]= ypos [i+1];
    }
    xpos[xpos.length-1]= mouseX+xOffset;
    ypos[ypos.length-1]= mouseY+yOffset; 
    for ( int i=0;i<xpos.length;i++) {
      noStroke();
      fill(r,g,b,a); 
      rectMode(CENTER);
      rect ( xpos[i], ypos[i], i, i);
    }
  }
}

