  class Guy {
  float x = 50;
  
  void display() {
 //ball
  fill(255);
  ellipse(x,580,40,40);
  }

  void walk() {
    x = (x+6);
    if (x >= 800) {  // If the shape is off screen
    x = -800;  // move to the left edge
    }
  }
  
 }



