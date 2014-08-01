class Tower {
  int co1 = 800;
  int co2 = 300;
  int co3 = 900;

  
  void display() {
  //tall building
  noStroke();
  fill(#F2F0AB);
  rectMode(CORNERS);
  rect(co1,co2,co3,height);
  }
  void stretch() {
    co1 = co1+10;
    co2 = co2-10;
    if (co1 >= 890) {
      co1 = co1+-10;
    }
    if (co2 <= 200) {
      co2 = co2+10;
    }
  }


/*Shrink Tower???? 
  void shrink() {
    co1 = co1-10;
    co2 = co2+10;
    if (co1 <= 800) {
      co1 = co1+10;
    }
    if (co2 >= 300) {
      co2 = co2-10;
    }
  }
  shrink tower stop*/


}  
   /*void mousePressed(){
     tower.stretch();
     tower.display();
     
  }*/





