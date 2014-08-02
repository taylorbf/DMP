class Tower {
  int co1 = 850;
  int co2 = 278;
  int co3 = 880;
  int co4 = 279;
 
  void display() {
  //TALL BUILDING
  noStroke();
  fill(#434A5A);
  rectMode(CORNERS);
  rect(co1,co2,co3,co4,7);
  }
  
  void stretch() {
    co4 = max(co4+1,height-10);
    }
}


