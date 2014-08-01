
 class Guy {
  float x = 50;
  
  void display() {
 //ball
  fill(255);
  ellipse(x,580,40,40);
  }

  void walk() {
    x = (x+4);
    if (x >= 600) {  // If the shape is off screen
    x = 50;  // move to the left edge
  }
   
  }
  
 }



