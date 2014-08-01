class Tower {
  float co1 = 800;
  float co2 = 300;
  float co3 = 900;

  
  void display() {
  //tall building
  noStroke();
  fill(#F2F0AB);
  rectMode(CORNERS);
  rect(co1,co2,co3,height);
  }
  
   void stretch() {
    co1 = co1+1;
    co2 = co2-1;
    if (co1 >= 890) {
      co1 = co1+-1;
    }
    if (co2 <= 200) {
      co2 = co2+1;
    }
  }
}



/*void stretch() {
    x = (tx+4);
    if (tx >= 600) {  // If the shape is off screen
    x = 50;  // move to the left edge
    }
  }*/
